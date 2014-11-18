part_one = "Car Body"
part_two = ["wheel One", "Wheel Two", "Wheel Three", "Wheel Four"]
part_three = "Yellow Paint"

def construct_car(parts)
  results_string = "The toy car is mad of:\n"
  parts.each do |part|
    results_string += "* #{part}\n"
  end
  results_string
end

puts construct_car([part_one, part_two, part_three])