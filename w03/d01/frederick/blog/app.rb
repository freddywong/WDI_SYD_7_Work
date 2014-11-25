require "pry"
require "sinatra"
require "sinatra/reloader"
require "pg"

def run_sql(sql_string)
  connection = PG.connect(dbname: "my_blog", host: "localhost")
  result = connection.exec(sql_string)
  connection.close
  return result
end

get '/' do
  @posts = run_sql("SELECT * FROM posts;")
#You will recieve an array of hashes after doing the command above. This equals to @students
erb :home
end

get '/post/new' do
  erb :new_blog_form
end

get '/post/:id' do
  post_id = params[:id]
  @post = run_sql("SELECT * FROM posts WHERE id=#{post_id};").first

  erb :post
end

get '/posts/:id/edit' do
  @post_id = params[:id]
  # binding.pry
  erb :edit_blog_form
end

post '/posts/:id/edit' do
  # binding.pry
  # post_id = params[:id]
  # @post = run_sql("UPDATE posts SET title=#{title}, ")
  run_sql("
    UPDATE posts
    SET 
    title='#{params["title"]}', 
    content='#{params["content"]}', 
    author='#{params["author"]}',
    author_website='#{params["author_website"]}' WHERE id='#{params[:id]}' 
  ;")

  redirect "/"

end

delete '/posts/:id' do
  binding.pry
  run_sql("
    DELETE FROM posts 
    WHERE id='#{params[:id]}'
  ;")

  redirect "/"
end


post '/posts' do
#The reason you write 'post' above is because you are creating new information and the post of "post '/students' do" needs to match with the 'method:POST' in new_student_form.erb	
run_sql("
  INSERT INTO posts
  (title, content, author, author_website)
  VALUES
  (
    '#{params["title"]}',
    '#{params["content"]}',
    '#{params["author"]}',
    '#{params["author_website"]}'
    )
")

redirect "/"
end

