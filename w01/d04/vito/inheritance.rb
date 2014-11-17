require "Pry"

class Animal
  def move
    puts "I can move!"
  end
end

class Mammal < Animal
  def eat
    puts "I can eat!"
  end

  def speak(action) # that's for later. i.e: mammal.speak("Raaaaa")
    puts action
    puts "I can speak!"
  end
end

class Monkey < Mammal
  def swing
    puts "I can swing!"
  end

  def speak(action)
    super # needs to have the same about of parameters. it only goes up one level too (e.g. can't call 'super' on Animal right now).
    puts "HoWWoo WHoooooo"
  end

  def performance # => prints out "I can eat" because it's looking at the inheritance of the .eat method from Mammal. same goes for the other methods.
    eat
    swing
    speak("Hello.")
  end
end


timmy = Monkey.new




binding.pry