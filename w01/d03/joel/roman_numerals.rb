puts "***Roman Numerals***\n What number would you like to see in Roman Numerals?"
# to_number = gets.chomp.to_i
def to_roman(number)
  sting = "I" * number

  sting.gsub("I" * 1000, "M").
  gsub("I" * 900, "CM").
  gsub("I" * 900, "D").
  gsub("I" * 900, "CD").
  gsub("I" * 900, "C").
  gsub("I" * 900, "XC").
#  gsub("I" * 900, "L").
#  gsub("I" * 900, "L").
#  gsub("I" * 900, "L").
#  gsub("I" * 900, "L").
#  gsub("I" * 900, "L").
#  gsub("I" * 900, "L").
end

put to_roman(1024)
