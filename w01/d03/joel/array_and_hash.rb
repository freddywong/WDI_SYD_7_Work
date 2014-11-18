# a = ["Anil", "Erik", "Jonathan"]

# # To return the "Erik" value..
# a[1]

# # To add my name to the array
# a.merge! "Joel"

# #__________________________________



# h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

# #to return the string "One"
# h[1]

# #to return the sting "two"
# h[:two]

# #to return the 2
# h["two"]

# #to add {3 => "Three"} to the hash
# h.merge!(3 => "Three")

# #to add {:four =>} to the hash
# h.merge!(:four => 4)

# #_______________________

# is = {true => "It's true!", false => "It's false"}

# # The return value of [2 + 2 == 4] is "It's true!"

# # The return value of is ["Erik" == "Jonathan"] is "It's false"

# # The return value of is[9 > 10] "It's false"

# # The return value of is[0] is nil

# # The return value of is["Erik"] is nil

# #_______________________

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

#to access Jonathan's Twitter handle
users["Jonathan"][:twitter]

# to add the number 7 to Erik's favorite numbers 
users["Erik"][:favorite_numbers].push(7)
<<<<<<< HEAD
#puts users["Erik"][:favorite_numbers]

#to add myself to the hash
users.merge!("Joel" => {})
#puts users["Joel"]
=======


#to add myself to the hash
users.merge!("Joel" => {})

>>>>>>> 3c083aa55008438d4a47eb3c5bd7697fcffeef31

#to return the array of Erik's favorite numbers
#puts users["Erik"][:favorite_numbers]
users["Erik"][:favorite_numbers].to_a

#to return the smallest of Erik's numbers
users["Erik"][:favorite_numbers].sort
puts users["Erik"][:favorite_numbers][0]

<<<<<<< HEAD
#to return an array of Anna's favorite numbers that are also even
users["Anil"][:favorite_numbers].sort
=======
#to return an array of Anil's favorite numbers that are also even
users["Anil"][:favorite_numbers].select {|x| x.even?}


#to return an array of favorite numbers common for all users


#to return an array containing all users favorite numbers, sorted, and excluding duplicates




#Notes from just after lunch
people.each do |person|
  puts person[:name]
  puts person[:age]
end
>>>>>>> 3c083aa55008438d4a47eb3c5bd7697fcffeef31
