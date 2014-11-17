# list only available apartments
require_relative "apartment"

list_available = Apartment.new(600, true, 400, 2, 1, [0])
occupied = false

apartment1 = Apartment.new(600, true, 400, 2, 1, [0])
apartment2 = Apartment.new(800, false, 500, 3, 2, ["John", "Julie", "Bob"])
apartment3 = Apartment.new(1000, true, 800, 4, 3, [0])

apartments_array = [apartment1, apartment2, apartment3]

apartments_array.each do |apartment|
  if apartment.is_occupied == occupied
    puts "#{apartment} is available!"
  end
end

#----------------------------------------------
# list all apartments in a building

apartments_array.each do |apartment|
  puts apartment
end

#----------------------------------------------
# limit listings to criteria

tenant_pref = Building.new("Paddington", "Modern", true, false, 2, [1,2,3,4])
address = "Paddington"

building1 = Building.new("Paddington", "Modern", true, false, 2, [1,2,3,4])
building2 = Building.new("Darlinghurst", "Retro", true, true, 3, [1,2,3,4])
building3 = Building.new("Surry Hills", "Old", false, false, 1, [1,2])

buildings_array = [building1, building2, building3]

buildings_array.each do |building|
  if building.address == address
    puts "We got a match!, the buidling was #{building}."
  end 
end

#----------------------------------------------
# list all available apartments in all buildings

























