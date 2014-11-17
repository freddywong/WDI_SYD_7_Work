require "Pry"

# classes are : details and behavior.

class Car
  attr_accessor :color, :make, :model, :year, :top_speed

  def print
    puts "This is the car:"
    puts "Color: #{self.color}"
    puts "Make: #{self.make}"
    puts "Model: #{self.model}"
    puts "Year: #{self.year}"
    puts "Top Speed: #{self.top_speed}"
  end
end

binding.pry

____________________________

class Crisps
  attr_accessor :brand, :flavor, :size, :rating

  def print
    puts "This is the crisps review:"
    puts "Brand: #{self.brand}"
    puts "Flavor: #{self.flavor}"
    puts "Size: #{self.size}"
    puts "Rating: #{self.rating}"
  end
end

binding.pry


class Person
  attr_accessor :first_name, :last_name

  def fullname
    "#{self.first_name} #{self.last_name}"
  end
end

vito =  Person.new
vito.first_name = "Vito"
vito.last_name = "Belgiorno"

lenny = Person.new
lenny.first_name = "Lenny"
lenny.last_name = "Baskdlaskdm"

puts vito.fullname # => prints "Vito Belgiorno"
puts lenny.fullname

binding pry

# never define a method outside a class



















