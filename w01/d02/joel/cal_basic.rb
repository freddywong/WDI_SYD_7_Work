require 'rainbow'
puts "Welcome to the Calulator"

def menu
  menu_options = ["(a)dd" , "(s)ubtract" , "(m)ultiply" , "(d)vide"]
  puts "What calculation would you like to make?"
  menu_options.each{|func| print " #{func}"}
  puts ":"
  asmd = gets.chomp.downcase
  case asmd[0]
    when "a"
      basic_calc("add")
    when "s"
      basic_calc("sub")

    
  end
end
 menu