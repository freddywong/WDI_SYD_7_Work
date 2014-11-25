class Building
	attr_accessor :address, :style, :has_doorman, :is_walkup, :num_floors, :apartments

	def initialize(address, style, has_doorman, is_walkup, num_floors, apartments)
		self.address = address
		self.style = style
		self.has_doorman = has_doorman
		self.is_walkup = is_walkup
		self.num_floors = num_floors
		self.apartments = apartments
	end

	def building_details
		puts "Address: #{self.address}"
		puts "Style: #{self.style}"
		puts "Doorman: #{self.has_doorman}"
		puts "Walkup: #{self.is_walkup}"
		puts "No. of floors: #{self.num_floors}"
		puts "Apartments: #{self.apartments}"
	end

end