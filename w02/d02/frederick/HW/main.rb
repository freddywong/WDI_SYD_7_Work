require "sinatra"
require "sinatra/reloader"

get '/' do
	
  erb :home, layout: :layout
end

get '/students/:name' do
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
	@name = params[:name]
	@email_address = params[:email_address]
	@subject = params[:subject]

	if @name.empty? == true || @email_address.empty? == true || @subject.empty? == true
		erb :error, layout: :layout
	else
		erb :thank_you, layout: :layout
	end	
end