require "pry"
require "sinatra"
require "sinatra/reloader"
require "pg"

def run_sql(sql_string)
  connection = PG.connect(dbname: "school", host: "localhost")
  result = connection.exec(sql_string)
  connection.close
  return result
end

get '/' do
  @students = run_sql("SELECT * FROM students;")
#You will recieve an array of hashes after doing the command above. This equals to @students
  erb :home
end

get '/students/new' do
  erb :new_student_form
end

get '/students/:id' do
  student_id = params[:id]
  @student = run_sql("SELECT * FROM students WHERE id=#{student_id};").first

  erb :student
end

post '/students' do
#The reason you write 'post' above is because you are creating new information and the route of "post '/students' do" needs to match with the 'method:POST' and action="/students" in new_student_form.erb	
  run_sql("
    INSERT INTO students
    (first_name, last_name, dob)
    VALUES
    (
      '#{params["first_name"]}',
      '#{params["last_name"]}',
      '#{params["dob"]}'
    )
  ")

  redirect "/"
end

