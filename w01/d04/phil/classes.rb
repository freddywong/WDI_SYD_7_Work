require 'pry'

class Car
  attr_accessor :color, :make, :model, :year, :top_speed

  def print
    puts "This is the car:"
    puts "The car is #{self.color}"
    puts "It is a #{self.make}, #{self.model}"
  end

end

jag_e = Car.new
jag_e.color = "Green"
jag_e.make = "Jaguar"
jag_e.model = "E-Tyoe"
jag_e.year = 1959
jag_e.top_speed = 241

# jag_e.print

class Sandwich

  attr_accessor :name, :bread, :filling, :meat, :spread, :cheese, :toasted

  def print
    puts "Ths #{self.name} is #{self.toasted} #{bread} bread, with #{self.meat}, #{self.filling}, and #{spread}"
  end

  def toast(status)
      self.toasted = status
  end

end

cubano = Sandwich.new
cubano.name = "Cubano"
cubano.bread = "Italian"
cubano.filling = "Pickles"
cubano.meat = "Ham and Pork"
cubano.spread = "Mustard and Mayo"
cubano.toasted = "not toasted"

cubano.print

cubano.toast("toasted")

cubano.print

print(cubano)