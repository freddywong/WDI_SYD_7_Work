car = "Jaguar E-type"
action = "driving"

def drive_car(argument_one, argument_two)
  puts "The #{argument_one} is #{argument_two}!"
end

drive_car(car, action)

#.... Or

car = "Jaguar E-type"
action = "driving"

def drive_car(argument_one, argument_two)
  return "The #{argument_one} ain't #{argument_two}!"
end

results = drive_car(car, action)
puts results
