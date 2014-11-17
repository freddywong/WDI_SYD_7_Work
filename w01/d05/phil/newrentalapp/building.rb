
class Building
  attr_accessor :address, :style, :has_doorman, :is_walk_up,
  :num_floors, :apartments

  def initialize(address, style, has_doorman, is_walkup, num_floors, apartments)
    self.address = address
    self.style = style
    self.has_doorman = has_doorman
    self.is_walk_up = is_walk_up
    self.num_floors = num_floors
    self.apartments = apartments
  end

  def to_s
    string = "Building\n"
    string += "Address: #{self.address}\n"
    string += "Style: #{self.style}\n"
    string += "Has Doorman?: #{self.has_doorman}\n"
    string += "Is Walk Up?:#{self.is_walk_up}\n"
    string += "Num floors: #{self.num_floors}\n"
    # string += "Apartment list: #{self.apartments}"
  end  

end






