require_relative "animal"

class Mammal < Animal
  def eat
    puts "I can eat!"
  end

  def speak(action) # that's for later. i.e: mammal.speak("Raaaaa")
    puts action
    puts "I can speak!"
  end
end