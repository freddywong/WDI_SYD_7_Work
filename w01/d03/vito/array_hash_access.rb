A.
a = ["Anil", "Erik", "Johnathan"]

a[1]
a.push("Vito")

B.
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

h[1]
h[:two]
h["two"]
h[3] = "Three"
h[:four] = 4

C.
is = {true => "It's true!", false => "It's false"}

"It's true!"
"It's false"
"It's false"
nil
nil

D.
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

users["Jonathan"][:twitter]
users["Erik"][:favorite_numbers].push(7)
users["Vito"] = { :twitter => "vitalbone", :favorite_numbers => [2, 3, 4] }
users["Erik"][:favorite_numbers]
users["Erik"][:favorite_numbers].min
users["Anil"][:favorite_numbers].select { |x| x.even? }




put all numbers together in one big array.
iterate over that array to find duplicate numbers.





def superarray(superdupe)
  users["Jonathan"][:favorite_numbers] + users["Erik"][:favorite_numbers] + users["Anil"][:favorite_numbers]
end
 puts superarray()












