require_relative "apartments"

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

