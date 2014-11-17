require 'pry'

class Animal
  def move
    puts "I can move!"
  end
end

class Mammal < Animal
  def eat
    puts "I csn eat too!"
  end

  def speak(action)
    puts "I can #{action}"
  end
end

class Monkey < Mammal
  
  def swing
    puts "I can swing!"
  end  

  def speak(action)
    super #calls the method speak inherited from Mammal
    puts "HoWWOo WhoHo"
  end

end


