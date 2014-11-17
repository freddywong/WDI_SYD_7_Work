require 'rainbow'
 
# A user should be given a menu of operations
# A user should be able to choose from the menu
def menu
  system ("clear")
  print "\n\t" + Rainbow("***Calc***\n").red, "\n"
  print Rainbow("(b)").white+Rainbow("asic ,").green+Rainbow("(a)").white+Rainbow("dvanced, ").green+Rainbow("(c)").white+Rainbow("onvert or ").green+Rainbow("(q)").white+Rainbow("uit ").green
  choice = gets.chomp.to_s
  case choice 
  when "b"
    basic_calc
  when "a"
    advanced_calc
  when "c"
    convert_calc
  when "q"
    response = "q"
  else 
    print Rainbow("\n Not a valid choice, press enter to try again").red
    gets
    menu
  end
end
 
 
# A user should be able to enter numbers to perform the operation on
# A user should be shown the result
def basic_calc
  print Rainbow("\n(a)").white+Rainbow("dd ").green+Rainbow("(s)").white+Rainbow("ubtract ").green+Rainbow("(m)").white+Rainbow("ultiply ").green+Rainbow("(d)").white+Rainbow("ivide ").green
  choice = gets.chomp.to_s
  print Rainbow("\nfirst number: ").blue
  first = gets.chomp.to_f
  print Rainbow("second number: ").blue
  second = gets.chomp.to_f
  case choice[0].downcase
  when "a"
    print Rainbow("\n#{first} + #{second} = ").blue + Rainbow("#{first + second}\n\n").white
  when "s"
    print Rainbow("\n#{first} - #{second} = ").blue + Rainbow("#{first - second}\n\n").white
  when "m"
    print Rainbow("\n#{first} 8 #{second} = ").blue + Rainbow("#{first * second}\n\n").white
  when "d"
    print Rainbow("\n#{first} / #{second} = ").blue + Rainbow("#{(first / second).rounf(5)}\n\n").white
  when "q"
    menu
  else 
    print Rainbow("\nYou are doing it ").green + Rainbow("WRONG\n").red
    basic_calc
  end
end
 
def advanced_calc
  print "\n" +Rainbow("(p)").white+Rainbow("ower, ").green+Rainbow("(s)").white+Rainbow("qrt or ").green+Rainbow("(c)").white+Rainbow("osine ").green 
  choice = gets.chomp.to_s
  case choice[0].downcase
  when "p"
    print Rainbow("\nnumber: ").blue
    number = gets.chomp.to_f
    print Rainbow("power: ").blue
    power = gets.chomp.to_f
    print Rainbow("\n#{number}").white+Rainbow(" to the power of ").green+Rainbow("#{power} ").white+Rainbow("is: ").green+Rainbow("#{(number**power).round(5)}\n\n").white
  when "s"
    print Rainbow("\nnumber: ").blue
    number = gets.chomp.to_f
    print Rainbow("\nthe square root of ").green+Rainbow("#{number}")+Rainbow(" is ").green+Rainbow("#{Math.sqrt(number).round(5)}\n\n").white
  when "c"
    print Rainbow("\nnumber: ").blue
    number = gets.chomp.to_f
    print Rainbow("\nthe cosine of ").green+Rainbow("#{number}").white+Rainbow(" is ").green+Rainbow("#{Math.cos(number).round(2)}\n").white
  when "q"
    menu
  else 
    print Rainbow("\nYou are doing it ").green + Rainbow("WRONG!!").red+Rainbow("try again\n").green
    advanced_calc
  end
end
 
def convert_calc
    print Rainbow("\n(c)").white+Rainbow("elsius to farenheit or ").green+Rainbow("(f)").white+Rainbow("arenheit to celsius ").green
    convert = gets.chomp.to_s
  case convert[0]
    when "c"
      print Rainbow("\ntemp in c: ").blue
      c = gets.chomp.to_i
      fht = (c * (9.0 / 5.0) + 32) 
      print Rainbow("#{c}").white+Rainbow("c in farenheit is ").green+Rainbow("#{fht.round(2)}").white+Rainbow("f\n\n").green
    when "f"
      print Rainbow("\ntemp in f: ").blue
      f = gets.chomp.to_i
      cel = ((f - 32) * (5.0 / 9.0))
      print Rainbow("#{f}").white+Rainbow("f in celcius is ").green+Rainbow("#{cel.round(2)}").white+Rainbow("c\n\n").green
    when "q"
      menu
    else 
     print Rainbow("\nYou are doing it ").green + Rainbow("WRONG!!, press enter to try again").red
    gets
    convert_calc
  end
end
 
response = menu
 
# This process should continue until the user selects a quit option from the menu
while response != 'q'
  gets
  response = menu
end