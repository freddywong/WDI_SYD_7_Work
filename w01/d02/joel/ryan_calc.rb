require 'rainbow'
 
# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  puts `clear`
  print Rainbow("\n\n\t***Calculator***\n\n").red
  print Rainbow("(b)asic, (a)dvanced, or (q)uit\n\n").green
  choice = gets.chomp.downcase
  case choice[0]
  when "b"
    basic_calc
  when "a"
    advanced_calc
  when "q"
    puts Rainbow("\n\tGoodbye\n").magenta
    gets
    response = "q"

  else 
    puts Rainbow("You're doing it wrong!".upcase).red
    menu
  end
 
end
 
 
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print Rainbow("\n(a)dd, (s)ubtract, (m)ultiply, (d)ivide: \n").yellow
  basic_choice = gets.chomp.downcase

  print "\nEnter your first number: " 
  first_number = gets.to_f
  print "\nEnter your second number: "
  second_number = gets.to_f


  case basic_choice[0]
  when "a"
    print "\n\t#{first_number} + #{second_number} = ", first_number + second_number, "\n"
  when "s"
    print "\n\t#{first_number} - #{second_number} = ", first_number - second_number, "\n"
  when "m"
    print "\n\t#{first_number} * #{second_number} = ", first_number * second_number, "\n"
  when "d"
    print "\n\t#{first_number} / #{second_number} = ", first_number / second_number, "\n"
  else Rainbow("\nYou're doing it wrong!".upcase).red
  end
  gets
end
:n_line => ["nTS", "n34th", "n28th", "n23rd", "nUS", "n8th"],
:l_line => ["l8th", "l6th", "lUS", "l3rd", "l1st"],
:six_line => ["sGC", "s33rd", "s28th", "s23rd", "sUS", "sAS"]
}

def advanced_calc
  print Rainbow("\n(p)ower, (s)qrt, or (t)ime conversion: \n").magenta
  adv_choice = gets.chomp.downcase
  case adv_choice[0]
  when "p"
    print "\nChoose a base number: "
    first_number = gets.to_i
    print "\nNow choose the factor to power #{first_number} by: "
    second_number = gets.to_i
    print "\n#{first_number}**#{second_number} = ", first_number ** second_number, "\n"
  when "s"
    print "\nChoose a number to find the square root of: "
    first_number = gets.to_i
    print "\nThe Square Root of #{first_number} is: ", Math.sqrt(first_number), "\n"
   when "t"
     def time_conv
       print "\nHow many time units would you like to convert?"
       time = gets.chomp.to_i
       print "\nConvert:\n (h)ours to minutes\n(m)inutes to seconds\n(s)econds to minutes\n"
       time_conv = gets.chomp.downcase
        case time_conv[0]
        when "h"
         print "#{time} hours are ", time * 60, " minutes."
        when "m"
         print "#{time} minutes are ", time * 60 ," seconds."
        when "s"
          print "#{time} seconds are ", time / 60," minutes."
        else
          print "Ain't got no time for this!"
        end
      end
      time_conv 
    puts " "
  else
    puts Rainbow("You're doing it wrong".upcase).red
  end
  gets
  
end
 
 
response = menu
 
# This process should continue until the user selects a quit option from the menu
while response != 'q'
 
  response = menu
end