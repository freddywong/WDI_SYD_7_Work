require "sinatra"
require "sinatra/reloader"
require "httparty"

# get '/' do
#  if params[:movie_title]
#  	search_term = params[:movie_title].gsub(" ", "+")
#  	response = HTTParty.get("http://www.omdbapi.com/?t=#{search_term}")
#  	@movie = JSON(response)
#  	#George of the Jungle
#  	#George+of+the+Jungle

#  end	
#  erb :home	
# end
get '/' do
	erb :home
end


get '/search' do
	if params[:query]
		search_term = params[:query].gsub(" ", "+")
		response = HTTParty.get("http://www.omdbapi.com/?s=#{search_term}")
		@movies = JSON(response)["Search"]


 	#George of the Jungle
 	#George+of+the+Jungle

 end	
 erb :search	
end

get '/movies/:imdb_id' do
	response = HTTParty.get("http://www.omdbapi.com/?i=#{params[:imdb_id]}&tomatoes=true")
	@movie = JSON(response)	
	@imdb_rating = @movie["imdbRating"].to_f.round
	@tomato_rating = @movie["tomatoRating"].to_f.round
	search_related_movies = @movie["Title"].gsub(" ", "+")
	response = HTTParty.get("http://www.omdbapi.com/?s=#{search_related_movies}")
	@related_movies = JSON(response)["Search"]

	erb :movie
end
