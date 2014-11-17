require_relative 'apartment'

building1 = Building.new("Paddington", "Modern", true, false, 2, [1,2,3,4])
building2 = Building.new("Darlinghurst", "Retro", true, true, 3, [1,2,3,4])
building3 = Building.new("Surry Hills", "Old", false, false, 1, [1,2])

apartment_one = Apartment.new(600, true, 400, 2, 1, [0])
tenant_pref = Building.new("Paddington", "Modern", true, false, 2, [1,2,3,4])

buildings_array = [building1, building2, building3]

puts building_one.price
puts apartment_one.


def avail_apartments
  if apartment.is_occupied == false
    puts "#{apartment} is available."
  else
    puts "#{apartment} is NOT available."
  end
end

def listings_to_criteria
  if tenant_pref == apartment




buildings_array.each do |building|
  if building.style == 

