people_csv = ["Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town"]

result = people_csv.map do |csv_string| 
  string_parts = csv_string.split(",")
  {
    first_name: string_part[0],
    last_name: string_part[1],
    email: string_part[2],
    address: string_part[3],
    suburb: string_part[4],
  }
end

puts result