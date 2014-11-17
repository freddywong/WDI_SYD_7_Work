
def leap_year_check(year)
	if leap_year year
  		puts "#{year} is a leap year"
	else
  		puts "#{year} is just a normal year"
	end
end

def leap_year(year)
	year%4==0 && (year % 100 != 0 || year % 400 == 0)
end

leap_year_check(2000)	