require "sinatra"
require "sinatra/reloader"
require "pry"

get '/' do
	binding.pry
  erb :home, layout: :layout
end

get '/students/:name' do
	# params = {
	# 	:name => "barney"
	# }
	# ON A GET REQUEST
		# The first place that Ruby starts creating the params hash from is the URL
		# This is based around URL matching
		# In this case...  /students/ is the base URL 
		# Anything after that is assigned as a value to the hash - the key comes from whatever starts with the colon

	#My notes:
	#1. The params hash is created right after the get(or post request).
	#2. It gets the key from the URL and puts it into the params hash
	#3. It then gets the value from the URL	and puts it into the params hashs


	@student_name = params[:name].to_s
	@ga_logo = "/ga-logo.png"
	case @student_name
	when "barney"

	student_data = {
		student_first_name: "Barney Gumble",
		work_history: "No employment history",
		education_history: "Springfield High School",
		image: "/barney.jpg"
	}

	when "nelson"

	student_data = {
		student_first_name: "Nelson Muntz",
		work_history: "Assistant Nerd Smasher - Bully Co.",
		education_history: "Springfield Elementary",
		image: "/nelson.jpg"
	}

	when "random"

	student_data = {
		student_first_name: "Random Guy",
		work_history: "None of your business!",
		education_history: "Who wants to know?!",
		image: "/stankey.png"
	}

	end

	@student = student_data[:student_first_name]
	@work = student_data[:work_history]
	@education = student_data[:education_history]
	@image = student_data[:image]

  erb :student, layout: :layout
end

get '/about' do
	@ga_logo = "/ga-logo.png"
	erb :about, layout: :layout
end

get '/contact' do
	@ga_logo = "/ga-logo.png"
	erb :contact, layout: :layout
end

post '/thank_you' do
	@ga_logo = "/ga-logo.png"

	# params = {
	# 	:name => "",
	# 	:email_address => "",
	# 	:subject => ""
	# }

	@name = params[:name]
	@email_address = params[:email_address]
	@subject = params[:subject]

	if @name.empty? == true || @email_address.empty? == true || @subject.empty? == true
		erb :error, layout: :layout
	else
		erb :thank_you, layout: :layout
	end	
end