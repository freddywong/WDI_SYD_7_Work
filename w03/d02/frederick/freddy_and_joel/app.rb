require 'sinatra'
require 'sinatra/reloader'
# require 'pry'

get '/:name' do
	@name = params[:name]
	# binding.pry
	erb :show_name
end