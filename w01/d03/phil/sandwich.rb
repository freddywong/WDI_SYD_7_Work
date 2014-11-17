def get_ingredients
  ingredients = []
  print "What bread so you like? "
  ingredients << gets.strip.to_s
  print "List everything you want inside\n"
  begin 
    input = gets.strip.to_s
    ingredients << input
  end until input == ""
  ingredients.pop
  return ingredients
end


def make_sandwich(ingredients)
  bread = ingredients.shift
  last = ingredients.pop
  sandwich = "My sandwich is on #{bread} with "
  ingredients.each {|ingred| sandwich += "#{ingred}, "}
  sandwich += "and #{last}."
  return sandwich
end

# bread = "sourdough"
# ingredients = ["ham", "cheese", "pickle", "mayo"] 

sandwich = make_sandwich(get_ingredients)
puts sandwich

# while gets.strip.to_s != ""
#   get_ingredients
# end




