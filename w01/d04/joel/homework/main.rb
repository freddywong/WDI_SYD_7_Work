#require "pry"
require_relative "buildings"
# require_relative './buildings.rb'
# require_relative './apartments.rb'
# require_relative './people.rb'

print "Welcome to alpha.alpha.domain.com\n\n"


# class Domain_com
#   attr_accessor ,

#   def print
#   puts ""
#   end 
# end

### homeless = Person.new
### empty = Apartment.new

### empty.apprtments = [homeless]
### homeless.apprtment = empty

people = [
  person1 = Person.new("Sam Sneed", 43, "Male", apt1)
  person2 = Person.new("Bill Wilder", 50, "Male", apt2)
  person3 = Person.new("Sam Sneed", 43, "Male", apt3)
  person4 = Person.new("Sam Sneed", 43, "Male", apt4)
  person5 = Person.new("Sam Sneed", 43, "Male", apt1)
]

apartments = [
  apt1 = Apartment.new(1900.00, false, 800, 2, 1, [person1, person2, person3, person4, person4])
  apt2 = Apartment.new(2350.00, false, 1000, 3, 2, [person1, person2, person3, person4, person4])
  apt3 = Apartment.new(900.00, false, 620, 1, 1, [person1, person2, person3, person4, person4])
  apt4 = Apartment.new(1100.00, false, 750, 2, 1, [person1, person2, person3, person4, person4])
  apt5 = Apartment.new(4530.00, false, 1875, 5, 3, [person1, person2, person3, person4, person4])
]

buildings = [
  build1 = Building.new("The Courtyard", "Highrise", true, false, 45, [app1, app2, app3, app4, app5])
  build2 = Building.new("Riverview", "Town House", false, true, 20, [app1, app2, app3, app4, app5])
  build3 = Building.new("Skydeck", "Highrise", true, false, 70, [app1, app2, app3, app4, app5])
  build4 = Building.new("Skid Row", "Govt Housing", false, true, 30, [app1, app2, app3, app4, app5])
]


puts.people