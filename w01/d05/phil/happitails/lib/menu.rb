require 'pry'
<<<<<<< HEAD
require_relative "animal"
=======

require_relative "animal"
require_relative "client"

>>>>>>> fd3dcc471c7ff032c8b3208c2250771f0be65b2e

class Menu

  def initialize

    system 'clear'

    puts "Welcome to Happitails Animal Shelter Management System\n"
    puts "======================================================\n\n"
    puts "Please choose an option\n"
    puts "\n1. Add a new animal"
    puts "\n2. Add a new client"
<<<<<<< HEAD
=======
    puts "\n=============================="
    puts "\n3. Display all animals"
    puts "\n4. Display all clients"
    puts "\n=============================="
    puts "\n5. Organise animal adoption"
    puts "\n6. Accept a new animal"
    puts "\n=============================="
>>>>>>> fd3dcc471c7ff032c8b3208c2250771f0be65b2e

    option = gets.strip.to_i

    case option
    when 1
<<<<<<< HEAD
      puts "Please provide details of the animal:"
      puts "Name:"
      name = gets.strip.to_s.capitalize
      puts "Age"
      age = gets.strip.to_i
      puts "Gender: (M or F)"
      gender = ""
      # until gender == "M" || gender == "F"
      gets.strip.to_s.upcase
      # end
      puts "Species:"
      species = gets.strip.to_s.capitalize
      puts "Please list #{name}'s toys"
      puts "First toy: "
      toys = gets.strip.to_s
      Animal.new(name,age,gender,species,toys)



    when 2
      # Client.new
      puts "option 2"
    else
      puts "no choice"
=======
      Animal.create

    when 2
      Client.create

    when 3
      Shelter.animal_display
      gets
      Menu.new

    when 4
      Shelter.client_display
      gets
      Menu.new

    when 5
      Animal.adopt

    when 6
      Client.donate

    else
      Menu.new
>>>>>>> fd3dcc471c7ff032c8b3208c2250771f0be65b2e
    end


  end

end
