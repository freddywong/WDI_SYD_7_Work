print "Welcome to alpha.alpha.domain.com\n\n"

class Buildings
  attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartment

  def initialize(address, style, has_doorman, is_walkup, num_floors, apartment)
    self.address = address
    self.style = style
    self.has_doorman = has_doorman
    self.is_walkup = is_walkup
    self.num_floors = num_floors
    self.apartment = apartment
  end
end

class Apartment
  attr_accessor :price, :is_occupied, :sqft, :num_beds, :num_baths, :renters

  def initialize(price, is_occupied, sqft, num_beds, num_baths, renters)
    self.price = price
    self.is_occupied = is_occupied
    self.sqft = sqft
    self.num_beds = num_beds
    self.renters = renters
  end
end

class Person
  attr_accessor :name, :age, :gender, :apartment

  def initialize(name, age, gender, apartment)
    puts self.name = name
    puts self.age = age
    puts self.gender = gender
    puts self.apartment = apartment
  end
    puts "#{self.name} is a #{self.age} year old #{self.gender} whose current residence is #{self.apartment}."

end

  