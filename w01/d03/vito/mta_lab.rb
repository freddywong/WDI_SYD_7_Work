trains = {
  n_line: ["times square", "34th street", "28th street", "23rd street", "union square", "8th street"],
  six_line: ["grand central", "33rd avenue", "28th avenue", "23rd avenue", "union square", "astor place"],
  l_line: ["8th avenue", "6th avenue", "union square", "3rd avenue", "1st avenue"]
}

print "Which station are you starting from: \n"
starting_point = "times square"

puts "Which line are you starting from: \n"
starting_line = :n_line

puts "What\'s your destination station: \n"
destination = "astor place"

puts "What\'s your destination line: \n"
destination_line = :six_line

def total_trip(starting_point, starting_line, destination, destination_line, trains)
  if starting_line == destination_line
    num_stops = trains[destination_line].index(destination) - trains[starting_line].index(starting_point)
  else
    to_union = trains[starting_line].index("union square") - trains[starting_line].index(starting_point)
    from_union = trains[destination_line].index(destination) - trains[destination_line].index("union square")
    num_stops = to_union.abs + from_union.abs
  end
end

p total_trip(starting_point, starting_line, destination, destination_line, trains)