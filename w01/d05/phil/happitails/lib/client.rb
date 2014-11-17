require_relative "shelter"

class Client < Shelter

<<<<<<< HEAD
class Client

  attr_accessor :name, :num_children, :age, :number_of_pets
 
  def initialize(name, num_children, age, number_of_pets)
  
  self.name = name
  self.num_children = num_children
  self.age = age
  self.number_of_pets = number_of_pets

=======
  attr_accessor :name, :num_children, :age, :number_of_pets

  def initialize(name, num_children, age, number_of_pets)

    self.name = name
    self.num_children = num_children
    self.age = age
    self.number_of_pets = number_of_pets

    @@clients << self

    # add_client_to_shelter(name, num_children, age, number_of_pets)
>>>>>>> fd3dcc471c7ff032c8b3208c2250771f0be65b2e

  end

  def self.create
    puts "Please provide details of the client "
    puts "Name: "
    name = gets.strip.to_s.capitalize
    puts "Number of Children: "
    num_children = gets.strip.to_i
    puts "Age: "
    age = gets.strip.to_i
    puts "Number of pets: "
    number_of_pets = gets.strip.to_i
    Client.new(name, num_children, age, number_of_pets)
    Menu.new
  end

  def self.donate
    puts "        Animal donation request\n"
    puts "==========================================\n"
    puts "Which client wants to donate?\n\n"
    client_display
    puts "If the client is not listed, please return to the main menu to register\n"
    client_choice = gets.strip.to_i
    get_client = @@clients[client_choice -1]
    puts "Has #{get_client.name} signed the animal donation statement?"
    if gets.strip.to_s.capitalize[0] == "Y"
      puts "Pet Name:"
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
      @@clients.delete_if {|n| n.name == get_client.name}
      Animal.new(name,age,gender,species,toys)
    else
      puts "Please complete the paperwork immediately before registering the animal!!\n"
    end
    gets
    Menu.new
  end


  def to_s
    "#{name}\n"+
      "Age: #{age} years\n"+
      "Children: #{num_children}\n"+
      "Pets: #{number_of_pets}\n"
      end

end
