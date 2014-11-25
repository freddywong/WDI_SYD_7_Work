# Project steps
# 1. Put this file into a folder with a "views" and "public" folder
# 2. Rename this file
# 3. Using what is in this file, complete the homework
 
require "sinatra"
require "sinatra/reloader"
require "json"
 
# Leave these methods alone!
 
# This method makes sure the file has been created (properly)
def setup_file
  unless File.exists?('link_db')
    File.open('link_db', 'a+') do |link_database|
      link_database.write("[]")
    end
  end
end
 
# This method takes a hash and saves it to a file
def save(link_hash)
  setup_file
  
  link_database_data = File.open('link_db').read
  existing_links = JSON.parse(link_database)
  link_database.close
  
  existing_links << link_hash
  link_json = JSON.generate(existing_links)
  
  File.open('link_db', 'w+') do |link_database|
    link_database.write(link_json)
  end
end
 
# This method gets all the links out of the file and returns them
def all
  setup_file
  
  links_data = File.open('link_db').read
  links = JSON.parse(links_data)
  
  return links
end
 
# Only change stuff below this line
 
get '/' do
  links
  erb :home # will also show the list
end
 
get '/tasks/new' do
  erb :form
end
 
post '/tasks' do
  # save the task data
  redirect '/' # do not change this
end