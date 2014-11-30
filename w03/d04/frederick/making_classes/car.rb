class Car
	attr_accessor :make, :model, :year
	def initialize(attrs)
	@make = attrs[:make]
	@model = attrs[:model]
	@year = attrs[:year]

	end

end

a_car = Car.new({
make: "Holden",
model: "Club Sport",
year: 2003
	})

a_car.drive