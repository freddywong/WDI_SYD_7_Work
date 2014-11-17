require "sinatra"
require "sinatra/reloader"

get "/" do
	erb :form, layout: :page_layout
end

post "/" do

	@first_number = params[:first_number].to_f
	@operator = params[:operator]
	@second_number = params[:second_number].to_f
	@result = params[:result]

	
	  
	  case @operator
	  when 'plus'
	    @result = "The sum of #{@first_number} and #{@second_number} is #{@first_number + @second_number}"
	  when 'minus'
	    @result = "The difference between #{@first_number} and #{@second_number} is #{@first_number - @second_number}"
	  when 'multiple'
	    @result = "The multiplication of #{@first_number} and #{@second_number} is #{@first_number * @second_number}"
	  when 'divide'
	    @result = "The division of #{@first_number} over #{@second_number} is #{@first_number / @second_number}"
	  end

	

	erb :form, layout: :page_layout
end

