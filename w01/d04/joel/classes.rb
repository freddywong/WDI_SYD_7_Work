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




class Person
  attr_accessor :first_name, :last_name, :email, :address
end


jag_e = Car.new
jag_e.color = "Green"
jag_e.make = "Jaguar"
jag_e.model = "E-type"
jag_e.year = 1959
jag_e.top_speed = 241



ford_mus = Car.new
ford_mus.color = "Black"
ford_mus.make = "Ford"
ford_mus.model = "Mustang GT"
ford_mus.year = 1976
ford_mus.top_speed = 280

jag_e.print

