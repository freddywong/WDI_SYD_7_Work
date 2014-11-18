class Business
  attr_accessor :name, :type, :owner, :phone, :rating

  def print
    puts "Your listing:"
    puts "Color: #{self.name}"
    puts "Cuisine: #{self.type}"
    puts "Owner: #{self.owner}"
    puts "Phone: #{self.phone}"
    puts "Rating: #{self.rating}"
    puts "____________________"
  end
end

vapiano = Business.new
vapiano.name = "Vapiano Italian Eatery"
vapiano.type = "Italian"
vapiano.owner = "Big Al"
vapiano.phone = "323 545 421"
vapiano.rating = 5

kebab_hut = Business.new
kebab_hut.name = "Kebab Hut"
kebab_hut.type = "Turkish"
kebab_hut.owner = "Hrant Dink"
kebab_hut.phone = "432 234 544"
kebab_hut.rating = 3

mcdonalds = Business.new
mcdonalds.name = "McDonald's"
mcdonalds.type = "American"
mcdonalds.owner = "Ronald McDonald"
mcdonalds.phone = "666 666 666"
mcdonalds.rating = 1

ch_garden = Business.new
ch_garden.name = "Mr. Wongs"
ch_garden.type = "Chinese"
ch_garden.owner = "Eric Koh"
ch_garden.phone = "292 403 000"
ch_garden.rating = 4


ch_garden.print
mcdonalds.print
vapiano.print
kebab_hut.print






class Car
  attr_accessor :color, :make, :model, :year, :top_speed

  def print
    puts "This is the car:"
    puts "Color: #{self.color}"
    puts "Make: #{self.make}"
    puts "Model: #{self.model}"
    puts "Year: #{self.year}"
    puts "Top Speed: #{self.top_speed}"
  end
end

jag_e = Car.new
jag_e.color = "Green"
jag_e.make = "Jaguar"
jag_e.model = "E-type"
jag_e.year = 1959
jag_e.top_speed = 241



ford_mus = Car.new
ford_mus.color = "Black"
ford_mus.make = "Ford"
ford_mus.model = "Mustang GT"
ford_mus.year = 1976
ford_mus.top_speed = 280

#jag_e.print

