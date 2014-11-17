require 'pry'

class Shelter

  attr_accessor :name, :clients, :animals

  def initialize(name)
<<<<<<< HEAD
    self.name = name
    clients = []
    @@animals = Array.new

  end

  def add_animal_to_shelter(name, age, gender, species, toys)
    new_animal = {:name => name, :age => age, :gender=> gender, :species => species, :toys => toys}
    @@animals << new_animal
    puts "The animals at #{name} are: #{@@animals}" # rewrite with an each
    gets
    Menu.new
  end

  def to_s
    puts "this shelter is #{name}"
=======

    self.name = name
    @@clients = Array.new
    @@animals = Array.new

    Animal.new("Benji",4,"M","Cat","Chew, Bell")
    Animal.new("Musket",12,"M","Dog","Stick, Ball")

    Client.new("Philip Hancock",1,44,1)
    Client.new("Nicola Hancock",2,36,2)

  end

  def add_animal_to_shelter(name, age, gender, species, toys)

    @@animals << {:name => name, :age => age, :gender=> gender, :species => species, :toys => toys}
    puts "The animals at #{name} are: #{@@animals}" # rewrite with an each
    gets
    Menu.new

  end

  def add_client_to_shelter(name, num_children, age, number_of_pets)

    @@clients << {:name => name, :num_children => num_children, :age=> age, :number_of_pets => number_of_pets}
    puts "The clients at #{name} are: #{@@clients}" # rewrite with an each
    gets
    Menu.new

  end

  def self.client_display

    @@clients.each do |a|
      puts "#{@@clients.index(a)+1}: #{a}\n"
    end
  end

  def self.animal_display

    @@animals.each do |a|
      puts "#{@@animals.index(a)+1}: #{a}\n\n"
    end
  end

  def self.registration(client,animal)
    @@animals.delete_if {|n| n.name == animal.name}
    @@clients.delete_if {|n| n.name == client.name}

  puts "              Animal Adoption Confirmation\n"
  puts "===========================================================\n\n"

  puts "Congratulations!, #{client.name} is adopting #{animal.name}\n"
  puts "\nPlease ensure you provide the correct new owner's pack for a"
  + "#{animal.age} year old #{animal.species}\n\n"
  puts "Please also ensure you give #{client.name} #{animal.name}'s toys:\n#{animal.toys}"
  gets
  Menu.new
>>>>>>> fd3dcc471c7ff032c8b3208c2250771f0be65b2e

  end


<<<<<<< HEAD
end

 
  
=======



end
>>>>>>> fd3dcc471c7ff032c8b3208c2250771f0be65b2e
