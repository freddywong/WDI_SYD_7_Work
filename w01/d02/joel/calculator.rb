<<<<<<< HEAD
 puts `clear`
=======
puts `clear`
>>>>>>> 3c083aa55008438d4a47eb3c5bd7697fcffeef31

require 'rainbow'
 
# A user should be given a menu of operations
# A user should be able to choose from the menu
 def menu
   puts "Calulator! \n What mode do you prefer?"
   puts "(b)asic , (a)dvance , or (q)uit"
   modes = gets.chomp.downcase
   case modes
    when "b"
      basic_calc
    when "a"
      advanced_calc
    when "q"
      response = "q"
    end
   end
 
 
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  puts "What calculation would you like to make?"
  puts "(a)ddition , (s)ubtraction , (m)ultiply , or (d)ivide?"
  operation = gets.chomp
  puts "First number: "
  first_num = gets.chomp.to_f
  puts  "Second number: "
  second_num = gets.chomp.to_f     
  case operation
  when "a"
    puts "#{first_num} + #{second_num} = "
    puts first_num + second_num
  when "s"
    puts "#{first_num} - #{second_num} = "
    puts first_num + second_num
  when "m"
    puts "#{first_num} - #{second_num} = "
    puts first_num * second_num
  when "d"
    puts "#{first_num} - #{second_num} = "
    puts first_num / second_num
  else
    puts "Wrongs!!!"
  end
 end

 
 def advanced_calc
  puts "What calculation would you like to make?"
  puts "(p)ower, (s)qrt: "
  advanced = gets.chomp.downcase
  case advanced
  when "p"
    puts "First number: "
    num1 = gets.chomp.to_f
    puts  "Second number: "
    num2 = gets.chomp.to_f     
    puts "#{num1} to the power #{num2} = "
    puts num1**num2
  when "s"
    puts "What number?"
    num3 = gets.chomp.to_f
    puts "The square root of #{num3} is "
    puts Math.sqrt(num3)
  else
    puts "That ain't cool!"
  end
  gets
 end
 
response = menu

# This process should continue until the user selects a quit option from the menu
while response != 'q'
  
  response = menu

end