require "sinatra"
require "sinatra/reloader"

get "/roman_numeral/:number" do
	@number = params[:number].to_i

	def to_roman(number)
	  string = "I" * number

	  string.gsub("I" * 1000, "M").
	    gsub("I" * 900,  "CM").
	    gsub("I" * 500,  "D").
	    gsub("I" * 400,  "CD").
	    gsub("I" * 100,  "C").
	    gsub("I" * 90,   "XC").
	    gsub("I" * 50,   "L").
	    gsub("I" * 40,   "XL").
	    gsub("I" * 10,   "X").
	    gsub("I" * 9,    "IX").
	    gsub("I" * 6,    "VI").
	    gsub("I" * 5,    "V").
	    gsub("I" * 4,    "IV")
	end

	erb :roman_numerals
end

get "/sum-it/:max_int" do
	@max_int = params[:max_int].to_i

	@numbers =(0...1000) 
	@sum = 0

	if @numbers =< @max_int
	@numbers.each do |n|
	  if n % 3 == 0 || n % 5 == 0
	    @sum += n
	  end
		
	end
	erb :max_integer


	# result =  (0...1000).reduce(0) do |sum, n|
	#   if n % 3 == 0 || n % 5 == 0
	#     sum + n
	#   else
	#     sum
	#   end
	# end

	# puts result

post "/users" do
	"You signed up with the email address: " +
	"#{params[:email]}" +
	" and password: #{params[:password]}"
end

post '/blog' do
	@title = params[:title].upcase
	@content = params[:content]
	erb :blog_post, layout: :page
end


post "/login" do
	"This is is your username: #{params[:username]}. This is your password: #{params[:password]}."
end

get "/search/:query" do
	"you are searching for: #{params[:query]}"
end


get "/hello/:name" do 
	"Hello #{params[:name]}"
end
