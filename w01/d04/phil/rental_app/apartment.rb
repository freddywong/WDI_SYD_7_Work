require_relative "building"

class Apartment < Building

  attr_accessor :building, :price, :is_occupied, :sqft, :num_beds, :num_baths

  def initialize(building, price, is_occupied, sqft, num_beds, num_baths)
    self.building = building
    self.price = price
    self.is_occupied = is_occupied
    self.sqft = sqft
    self.num_beds = num_beds
    self.num_baths = num_baths
  end
# end
  # def to_s
  #   puts "This apartment is in the #{self.building} it is #{self.price} per week"
  #   puts "It is #{self.sqft} square feet, has #{self.num_beds} beds and #{self.num_baths} bathroomes."
  #   if self.is_occupied == false
  #     puts "It is currently unoccupied "
  #   else
  #     puts "It is currently occupied"
  #   end
  # end

  def to_hash
    self.class = {
      building: self.building, 
      price: self.price, 
      is_occupied: self.is_occupied,
      sqft: self.sqft,
      num_beds: self.num_beds,
      num_baths: self.num_baths
    }
  end

end

def create_apartment_list
  apartment_list = []
  apartment_list << Apartment.new("Tower", 500, false, 1000, 2, 2)
  apartment_list << Apartment.new("Tower", 600, true, 1300, 2, 2)
  apartment_list << Apartment.new("Tower", 700, true, 1400, 2, 3)
  apartment_list << Apartment.new("Tower", 400, false, 800, 2, 1)
  apartment_list << Apartment.new("Tower", 1000, false, 2000, 4, 3)
  apartment_list << Apartment.new("Flats", 400, false, 800, 2, 1)
  apartment_list << Apartment.new("Flats", 500, true, 1000, 2, 1)
  apartment_list << Apartment.new("Flats", 600, true, 1200, 2, 2)
  apartment_list << Apartment.new("Flats", 400, false, 800, 1, 1)
  apartment_list << Apartment.new("Flats", 800, false, 1600, 3, 2)
  apartment_list << Apartment.new("Dorms", 450, false, 900, 1, 1)
  apartment_list << Apartment.new("Dorms", 400, true, 800, 1, 2)
  apartment_list << Apartment.new("Dorms", 700, true, 700, 2, 2)
  apartment_list << Apartment.new("Dorms", 400, false, 600, 1, 1)
  apartment_list << Apartment.new("Dorms", 650, false, 1200, 2, 2)
  
  return apartment_list
end


puts apartments = create_apartment_list
vacant = []
vacant << apartments.reject {|x| x.is_occupied}

# puts buildings_with_vacant = vacant.select {|x| x.building}

 




