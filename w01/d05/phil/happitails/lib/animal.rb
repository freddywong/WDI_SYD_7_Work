<<<<<<< HEAD
require_relative "shelter"
require_relative "menu"

class Animal < Shelter

  attr_accessor :name, :age, :gender, :species, :toys
 
  def initialize(name, age, gender, species, toys)

  self.name = name
  self.age = age
  self.gender = gender
  self.species = species
  self.toys = toys

  # self.add_animal_to_shelter
  add_animal_to_shelter(name, age, gender, species, toys)
 
=======
require 'pry'
require_relative "shelter"
require_relative "animal"


class Animal < Shelter

  attr_accessor :name, :age, :gender, :species, :toys


  def initialize(name, age, gender, species, toys)

    self.name = name
    self.age = age
    self.gender = gender
    self.species = species
    self.toys = toys


    @@animals << self

>>>>>>> fd3dcc471c7ff032c8b3208c2250771f0be65b2e
  end

  def self.create
    puts "Please provide details of the animal:"
    puts "Name:"
    name = gets.strip.to_s.capitalize
    puts "Age"
    age = gets.strip.to_i
    puts "Gender: (M or F)"
    gender = gets.strip.to_s.upcase
    puts "Species:"
    species = gets.strip.to_s.capitalize
    puts "Please list #{name}'s toys"
    toys = gets.strip
    # puts "Please enter a list #{name}'s toys, use \",\" to seperate"
    # toys=[]
    # toy_list = gets.strip
    # toy_list_array = toy_list.split(",")
    # toys = toy_list_array
    Animal.new(name,age,gender,species,toys)
    Menu.new
  end


  def to_s
    "#{name}\n"+
      "Age: #{age} years\n"+
      "Gender: #{gender}\n"+
      "Species: #{species}\n"+
      "Toys: #{toys}"  # create toys class and objects
  end

  def self.adopt
    puts "        Animal adoption request\n"
    puts "==========================================\n"
    puts "Which client wants to adopt?\n\n"
    client_display
    client_choice = gets.strip.to_i
    # choice = choice - 1
    # binding.pry
    # get_client = Shelter.get_client_details(choice)
    get_client = @@clients[client_choice -1]
    puts "Has #{get_client.name} completed background and suitability checks? (Y/N)"
    if gets.strip.to_s.capitalize[0] == "Y"
      puts "Please provide information regarding the animal to be adopted"
      animal_display
      animal_choice = gets.strip.to_i
      get_animal = @@animals[animal_choice -1]
      registration(get_client,get_animal)
    else
      puts "Please complete the checks and the organise adoption at a later date\n"
    end
    gets
    Menu.new
  end

<<<<<<< HEAD


end



# puts Animal
=======
end
>>>>>>> fd3dcc471c7ff032c8b3208c2250771f0be65b2e
