car = "Jaguar E-Type"
action = "Driving"


def drive_car(argument_one, argument_two) # the parameters have nothing to do with previously stated variables.
  puts "I am #{argument_two} my #{argument_one}."
end

drive_car(car, action)
# prints "I am Driving my Jaguar E-Type."
# 'car' links up to first position (in this case argument_one), 'action' links up to second position (in this case argument_two)

__________________________________

car = "Jaguar E-Type"
action = "Driving"


def drive_car(argument_one, argument_two) # the parameters have nothing to do with previously stated variables.
  return "I am #{argument_two} my #{argument_one}."
end

result = drive_car(car, action)
puts result
# prints "I am Driving my Jaguar E-Type."
