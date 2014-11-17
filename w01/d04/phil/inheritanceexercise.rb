
class Vehicle
  attr_accessor :type
end

class Car < Vehicle
  attr_accessor  :make, :model, :color, :engine_size, :fuel, :max_speed
  
  def describe
    print "This #{self.color} #{self.make} #{self.model} #{self.type} has a #{engine_size} #{self.fuel} engine and a max speed of #{max_speed}"
  end
end

# class Motorbike < Vehicle
#   attr

class Ferrari < Car
  attr_accessor :roadorrace
  
  def describe
    super
    print " and is driven on the #{roadorrace}."
  end
end

  GTS = Ferrari.new
  GTS.type = "car"
  GTS.make = "Ferrari"
  GTS.model = "380 GTS"
  GTS.color = "Red"
  GTS.engine_size = "3.0L"
  GTS.fuel= "Petrol"
  GTS.max_speed = 350
  GTS.roadorrace = "road"

GTS.describe
