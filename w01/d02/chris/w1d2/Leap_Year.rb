put "please put in the Year"
year=gets.strip.to_i
if year%4 == 0  && (year%100 !=0 || year% 400 ==0)
  puts "#{year} is a leap year"
else
  puts "#{year} is just a normal year"
end