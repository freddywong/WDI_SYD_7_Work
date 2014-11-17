

def to_roman (number)
  string = "I" * number
  string.gsub("I" * 1000, "M").
  gsub("I"*900,"CM").
  gsub("I"*500,"D").
  gsub("I"*400,"CD").
  gsub("I"*100,"C").
  gsub("I"*90,"CX").
  gsub("I"*50,"L").
  gsub("I"*40,"LX").
  gsub("I"*10,"X").
  gsub("I"*9,"XI").
  gsub("I"*5,"V").
  gsub("I"*4,"VI")
end

puts to_roman(1997)



# def roman_num (year)
# if year % 1000 == 0
#   thousand = (year / 1000).rounddown
#   end
#   puts thousand
# end
