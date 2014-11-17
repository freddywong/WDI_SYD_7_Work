require "pry"

a = 5
b = 10

binding.pry # this means pry is only running up to this point. i.e. it's not going to evaluate c = 20.

puts "keeps running here"

c = 20