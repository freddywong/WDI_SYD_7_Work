def print(car)
    puts "This is the car:"
    puts "Color: #{car[:color]}"
    puts "Make: #{car[:make]}"
    puts "Model: #{car[:model]}"
    puts "Year: #{car[:year]}"
    puts "Top Speed: #{car[:top_speed]}"
  end


  jag_e = {
    color: "Green",
    make: "Jaguar",
    model: "E-Type",
    year: 1959,
    top_speed: 241
  }

print(jag_e)

