# to get it so our input is simpler we define the initialize method

class Car
  attr_accessor :color, :make, :model, :year, :top_speed

  def initialize(color, make, model, year, top_speed = 220)
    self.color = color
    self.make = make
    self.model = model
    self.year = year
    self.top_speed = top_speed
  end

  def print
    puts "This is the car:"
    puts "Color: #{self.color}"
    puts "Make: #{self.make}"
    puts "Model: #{self.model}"
    puts "Year: #{self.year}"
    puts "Top Speed: #{self.top_speed}"
  end
end

jag_e = Car.new("Green", "Jaguar", "E-Type", 1959, 241)
jag_e.print