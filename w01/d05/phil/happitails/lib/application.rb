require_relative "shelter"
<<<<<<< HEAD
require_relative "animal"
require_relative "client"
require_relative "menu"
=======
require_relative "menu"
require_relative "animal"
>>>>>>> fd3dcc471c7ff032c8b3208c2250771f0be65b2e

class Application

  def start

  system 'clear'

  puts "Welcome to Happitails Animal Shelter Management System\n"
  puts "======================================================\n\n"
  
  Shelter.new("Happi")
  Menu.new


  end




  end
