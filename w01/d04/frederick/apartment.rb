require_relative "building"

class Apartment < Building
	attr_accessor :price, :is_available, :sqft, :num_beds, :num_baths, :renters

	def initialize(price, is_available, sqft, num_beds, num_baths, renters = nil)
		self.price = price
		self.is_available = is_available
		self.sqft = sqft
		self.num_beds = num_beds
		self.num_baths = num_baths
		self.renters = renters
	end

	def apartment_details
		puts "Price: #{self.address}"
		puts "Availability: #{self.is_available}"
		puts "Square feet: #{self.sqft}"
		puts "No. of bedrooms: #{self.num_beds}"
		puts "No. of bathrooms: #{self.num_baths}"
		puts "Renters: #{self.renters}"
	end

end