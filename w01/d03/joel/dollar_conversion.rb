puts "How many USD would you like to convert?"
amount = gets.chomp.to_f

puts "What would you like to convert it into?\nAUD - Australian Dollar\nUSD - US Dollar\nCAD - Canadian Dollar\n-----------------"
convert_to = gets.chomp
case convert_to
when "AUD"
  rate = 1.15
when "USD"
  rate = 1.00
when "CAD"
  rate = 1.10
else 
  puts "That is not real money."
end

def convert_dollars(amount_to_convert, conversion_rate)

  puts amount_to_convert * conversion_rate

end

convert_dollars( amount, rate )
# convert_dollars( 100, 1.15 )

# def dollar_conv(money)
#   result_string = "That's a fat wallet "
#   money.each do |rate|
#     result_string += " you have #{ammount * rate} !"
#   end
#   result_string
# end

# puts dollar_conv( ammount, aud_rate )