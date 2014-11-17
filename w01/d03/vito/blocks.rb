greetings = ["hello sir", "good bye", "okay trooper"]

greetings.each { |word| puts word.upcase }

# or for multi line blocks

greetings.each do |word|
  puts word.upcase
end


#! you can't call a method on a string !
# e.g. greetings.upcase

# more complex

greetings.each do |word|
  unless word == "Hello"
    puts word.upcase
  else
    puts word.capitalize
  end
end

# capitalize on two words in a string - using .map

splits = greetings.map do |word|
  word.split(" ").map { |first_word| first_word.capitalize }.join(" ")
end

p splits