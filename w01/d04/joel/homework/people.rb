require_relative "apartments"

class Person
  attr_accessor :name, :age, :gender, :apartment = nil

  def initialize(name, age, gender, apartment)
    puts self.name = name
    puts self.age = age
    puts self.gender = gender
    puts self.apartment = apartment
  end
end