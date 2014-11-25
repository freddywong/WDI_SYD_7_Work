require "sinatra"
require "sinatra/reloader"
require "pg"

def run_sql(sql)
  con = PG.connect(dbname: 'blog', host: 'localhost')
  res = con.exec(sql)
  con.close
  return res
end

get '/' do
  @posts = run_sql("
  SELECT posts.title, posts.published_at, posts.id,
  authors.first_name AS authors_first_name,
  authors.last_name AS authors_last_name
  FROM posts
  LEFT OUTER JOIN authors
  ON posts.author_id = authors.id;
")

  erb :home
end

get '/post/:id' do
  @post = run_sql("SELECT * FROM posts WHERE id='#{params[:id]}';")[0]

  erb :post
end

get '/posts/new' do
  @authors = run_sql("SELECT id, first_name, last_name FROM authors;")

  erb :new_post
end

get '/posts/:id/edit' do
  @post = run_sql("SELECT * FROM posts WHERE id='#{params[:id]}';")[0]
  @authors = run_sql("SELECT id, first_name, last_name FROM authors;")

  erb :edit_post
end

put '/posts/:id' do
  run_sql("UPDATE posts SET
  title='#{params[:title]}',
  content='#{params[:content]}',
  author_id='#{params[:author_id]}'
  WHERE id=#{params[:id]};")

  redirect '/'
end

post '/posts' do
  run_sql("
  INSERT INTO posts
  (title, content, author_id)
  VALUES
  ('#{params[:title]}', '#{params[:content]}', '#{params[:author_id]}');
")

  redirect '/'
end

delete '/posts/:id' do
  run_sql("
DELETE FROM posts WHERE id='#{params[:id]}';
")

  redirect '/'
end

get '/authors' do
  @authors = run_sql("SELECT * FROM authors;")

  erb :authors
end

get '/authors/new' do
  erb :new_author
end

post '/authors' do
  run_sql("
  INSERT INTO authors
  (first_name, last_name, bio, twitter, website, google_plus)
  VALUES
  ('#{params[:first_name]}', '#{params[:last_name]}', '#{params[:bio]}'
    , '#{params[:twitter]}', '#{params[:website]}', '#{params[:google_plus]}');
")

  redirect '/authors'
end

get '/authors/:id/edit' do
  @author = run_sql("SELECT * FROM authors WHERE id=#{params[:id]};")[0]

  erb :edit_author
end

delete '/authors/:id' do
  run_sql("
DELETE FROM authors WHERE id='#{params[:id]}';
")

  redirect '/authors'
end

put '/authors/:id' do
  run_sql("UPDATE authors SET
  first_name='#{params[:first_name]}',
  last_name='#{params[:last_name]}',
  bio='#{params[:bio]}',
  twitter='#{params[:twitter]}',
  website='#{params[:website]}',
  google_plus='#{params[:google_plus]}'
  WHERE id=#{params[:id]};")

  redirect '/authors'
end
