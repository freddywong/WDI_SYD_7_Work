require_relative "animal"
require_relative "client"
require_relative "shelter"

module HappiTrails
  class App
    def start
      animals = [
        Animal.new("Tigger", 10, "Male", "Dog", ["bone" , "rope" , "rawhide"]),
        Animal.new("Felix", 5, "Male", "Cat", ["toy mouse", "string"]),
        Animal.new("Ruby", 5, "Female", "Dog", ["squeeky toy", "treats", "tire"])
      ]

      clients = [
        Client.new("Jimmy JoBob", 12, 31, "Ruby"),
        Client.new("Mary Goround", 2, 43, "Felix"),
        Client.new("Tony Abbott", 3, 57, "Tigger")
      ]

      shelter = [
        Shelter.new
      ]

      main_menu
    end

    def list_client(all_clients)


    end


    def main_menu
      print "   ~~~_ Happi Trails _~~~
        ~~~_Animal Tracker_~~~

        Type one of the following inputs:
      [A]  Create a new Animal record
      [B]  Create a new Customer record
      [C]  Print Client list

      [Q]  Quit\n
      _________________________________\n"

      response = gets.chomp.upcase

      case response
        when "A" 
          puts "Please enter animal info using comma separated values:\n (name, age, gender, species, toys)\n ________________________________\n "
          answers = gets.chomp.capitalize
          new_info = answers.split ', '
          new_animal = Animal.new(new_info[0], new_info[1], new_info[2], new_info[3], new_info[4])
          animals << new_animal
          puts "Animal successfully added to the database"

        when "B" 
          puts "Please enter client info using comma separated values:\n (name, number_of_children, age, pets)\n ________________________________\n "
          answers = gets.chomp.capitalize
          new_info = answers.split ', '
          new_client = Client.new(new_info[0], new_info[1], new_info[2], new_info[3])
          clients << new_client
          puts "Client successfully added to the database" 

        when "C"
          list_client(clients.each)

        when "Q"
          exit

        else
          print "That is not a valid entry. Please try again."
          main_menu
      end

      main_menu

    end
  end
end








