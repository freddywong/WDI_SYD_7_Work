response = false
def menu(origin_destination)
  if origin_destination == "origin"
    print "PLease choose the line and subway station you are leaving from:\n"
  else origin_destination == "destination"
    puts `clear`
    print "PLease choose the line and subway station you are traveling to:\n"
  end
  print "\nSubway Line:\n[N] N-line\n[L] L-line\n[S] 6-line\n_____________\n"
  origin_line = gets.chomp.upcase
  case origin_line[0]
    when "N"    
      print "\nChoose your N Line Station:\n"
      print "[A] Times Square\n[B] 34th Street\n[C] 28th Street\n[D] 23rd Street\n[E] Union Square\n[F] 8th Street\n_____________\n"
      n_choice = gets.chomp.upcase
      case n_choice
      when "A"
        return ["nTS","Times Square"]
      when "B"
        return ["n34th","34th Street"]
      when "C"
        return ["n28th","28th Street"]
      when "D"
        return ["n23rd","23rd Street"]
      when "E"
        return ["nUS","Union Square"]
      when "F"
        return ["n8th","8th Street"]
   
      else
        print "Not a valid entry!"
        menu(origin_destination)
      end
    when "L"    
      print "\nChoose your L Line Station:\n"
      print "[A] 18th Street\n[B] 6th Street\n[C] Union Square\n[D] 3rd Street\n[E] 1st Street\n_____________\n"
      l_choice = gets.chomp.upcase
      case l_choice
      when "A"
        return ["l8th","8th Street"]
      when "B" 
        return ["l6th","16th Street"]
      when "C"
        return ["lUS","Union Square"]
      when "D"
        return ["l3rd","3rd Street"]
      when "E"
        return ["l1st","1st Street"]

      else
        print "Not a valid entry!"
        menu(origin_destination)
      end
    when "S"    
      print "\nChoose your Six Line Station:\n"
      print "[A] Grand Centeral\n[B] 33rd Street\n[C] 28th Street\n[D] 23rd Street\n[E] Union Square\n[F] Astor Place\n_____________\n"
      s_choice = gets.chomp.upcase
      case s_choice
      when "A"
        return ["sGC","Grand Central Station"] 
      when "B" 
        return ["s33rd","33rd Street"]
      when "C"
        return ["s28th","28th Street"]
      when "D"
        return ["s23rd","23rd Street"]
      when "E"
        return ["sUS","Union Square"]
      when "F"
        return ["sAS","Astor Place"]
  
      else
        print "Not a valid entry!"
        menu(origin_destination)
      end 
    else
      print "Invalid Selection!"
      puts `clear`
      menu(origin_destination)
  end
end  

def station_line(station, subway_list)
  if subway_list[:n_line].index(station)
    return [station,"N Line", subway_list[:n_line].index(station),subway_list[:n_line].index("nUS")]
  elsif subway_list[:l_line].index(station)
    return [station,"L Line", subway_list[:l_line].index(station),subway_list[:l_line].index("lUS")]
  elsif subway_list[:six_line].index(station)
    return [station,"Six Line", subway_list[:six_line].index(station),subway_list[:six_line].index("sUS")]
  else
    print "NFI"
  end
end

def determine_stops
  changes = 0
<<<<<<< HEAD
  print changes
=======
# print changes
>>>>>>> 3c083aa55008438d4a47eb3c5bd7697fcffeef31
  subway_lines = {
  :n_line => ["nTS", "n34th", "n28th", "n23rd", "nUS", "n8th"],
  :l_line => ["l8th", "l6th", "lUS", "l3rd", "l1st"],
  :six_line => ["sGC", "s33rd", "s28th", "s23rd", "sUS", "sAS"]
}
  origin_station = menu("origin")
  destination_station = menu("destination")
  
  origin_details = station_line(origin_station[0], subway_lines)
  destination_details = station_line(destination_station[0], subway_lines)
  if origin_details[1] == destination_details[1]
    num_stops = (origin_details[2] - destination_details [2]).abs
  elsif (origin_details[1] == "Six Line") && (destination_details[1] == "N Line") || (destination_details[1] == "Six Line" && origin_details[1] == "N Line")
    changes = 1
      if (origin_details[2]<=2) && (destination_details[2]<=2)
          num_stops = ((origin_details[2]-2).abs)+((destination_details[2]-2).abs)
      elsif (origin_details[2]>=3) && (destination_details[2]>=3)
           num_stops = ((origin_details[2]-3).abs)+((destination_details[2]-3).abs)
      else 
        num_stops = (origin_details[2] - destination_details [2]).abs
      end 
  else
    num_stops = ((origin_details[2]-origin_details[3]).abs)+((destination_details[2]-destination_details[3]).abs)
  end

  if num_stops == 1
  puts "It is #{num_stops} stop from #{origin_station[1]} on the #{origin_details[1]} to #{destination_station[1]} on the #{destination_details[1]}."
  elsif num_stops == 0
  puts "You are at the same station, no need to travel"  
  else
    if changes == 1
      print "\n\nIt is #{num_stops} stops from #{origin_station[1]} on the #{origin_details[1]} to #{destination_station[1]} on the #{destination_details[1]}, with one change of train\n"
    elsif
      print "\n\nIt is #{num_stops} stops from #{origin_station[1]} on the #{origin_details[1]} to #{destination_station[1]} on the #{destination_details[1]}."  
    end
  end
end 


while response != 'q'
  puts `clear`
  print "************ Welcome to MTA ************\n"
  determine_stops
  response = gets.to_s[0]
end
