require "pry"
require_relative "building"
require_relative "apartment"
# require_relative "person"

building_one_apartments = [
  Apartment.new(250, false,400 ,2 ,1 ),
  Apartment.new(400, false,400 ,1 ,1 ),
  Apartment.new(500, false ,400 ,1 ,1 ),
  Apartment.new(650, false ,400 ,3 ,1 ),
]

building_two_apartments = [
  Apartment.new(250, true ,400 ,1 ,1 ),
  Apartment.new(400, false ,500 ,1 ,1 ),
  Apartment.new(500, true ,400 ,13,1 ),
  Apartment.new(650, false ,400 ,2 ,1 ),
]

building_three_apartments = [
  Apartment.new(200, true ,400 ,1 ,1 ),
  Apartment.new(450, false ,400 ,1 ,1 ),
  Apartment.new(550, true ,600 ,2 ,1 ),
  Apartment.new(650, false ,400 ,4,1 ),
]

buildings = [
  Building.new("121 George St, Sydney", "Georgian", true, false, 5, building_one_apartments),
  Building.new("100 Kent St, Sydney", "High Rise", true, false, 10, building_two_apartments),
  Building.new("200 Kent St, Sydney", "Condos", false, false, 10, building_three_apartments)
]

#

def list_buildings(buildings)
  buildings.each do |building|
    puts "#{buildings.index(building)}: #{building}"
  end
end

# def list_apartments

def list_apartments(buildings_array)
  print "Choose a building: "
  building_number = gets.strip.to_i
  single_building = buildings_array[building_number]
  single_building.apartments.each do |apartment|
    puts apartment
  end
end


def list_building_with_avail(all_buildings)
  all_buildings.each do |single_building|
    is_available_values = single_building.apartments.map do |single_apartment|
      single_apartment.is_available
    end
    is_there_an_available_apartment = is_available_values.include?(true)
    if is_there_an_available_apartment
      puts "#{all_buildings.index(single_building)}: #{single_building}"
    end
  end
end

def list_avail_apartments(single_building)
  single_building.each do |apartment|
    # is_available_values = single_building.apartments.map do |single_apartment|
    puts apartment.select.is_available?(true)
  end
  is_there_an_available_apartment = is_available_values.include?(true)
  if is_there_an_available_apartment
    puts "#{all_buildings.index(single_building)}: #{single_building}"
  end
end


puts "(lb)list buildings, {lba) list buildings with available apartments"
puts "(la)list all apartments, (laa) list all available apartments "
puts "(q)quit"

response = gets.strip

while response != 'q'
  case response
  when 'lb'
    list_buildings(buildings)
  when 'lba'
    list_building_with_avail(buildings)
  when 'la'
    list_apartments(apartment)
  when 'laa'
    list_avail_apartments
  else
    puts "That menu item doesn't exist"
  end
  response = gets.strip
end
