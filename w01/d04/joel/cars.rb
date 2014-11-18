#require "pry"

class Vehicle
  attr_accessor :type,

  def print
  puts "Congratulations.. You have motorized transportation."
  end 
end

class Car < Vehicle
  attr_accessor :make, :year, :top_speed
  
  def print
    super
    puts "Maker: #{self.make}"
    puts "Year: #{self.year}"
    puts "Top Speed: #{self.top_speed}"
  end
end

class Ferrari < Car
  attr_accessor :gears, :race

  def print
    super
    puts "Gear ratio: #{self.gears}"
    puts "Race type: #{self.gears}"
  end
end

f_gto = Ferrari.new
f_gto.make = "Ferrari"
f_gto.type = "Auto"
f_gto.year = 1979
f_gto.top_speed = 320
f_gto.gears = "4.3:10"


puts f_gto.print


#binding.pry