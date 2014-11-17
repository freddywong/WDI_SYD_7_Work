# require_relative "building"

class Apartment #< Building

  attr_accessor :price, :is_available, :sqft, :num_beds, :num_baths

  def initialize(price, is_available, sqft, num_beds, num_baths)
    self.price = price
    self.is_available = is_available
    self.sqft = sqft
    self.num_beds = num_beds
    self.num_baths = num_baths
  end

  def to_s
    string = "Apartment\n"
    string += "Price: #{self.price}\n"
    string += "Is Available: #{self.is_available}\n"
    string += "Square feet: #{self.sqft}\n"
    string += "Number of Beds:#{self.num_beds}\n"
    string += "Number of Baths: #{self.num_baths}\n"
  end  


end




