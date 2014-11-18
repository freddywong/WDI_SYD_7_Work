people_csv = [
  "Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
   "Mike,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
    "Bill,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
     "Dave,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
      "Hank,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
      "Tim,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
      "Bart,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
      "Ted,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
      "Bob,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town",
      "Craig,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town"]
]

people_csv.map do |csv_string|
  string_parts = csv_string.split(",")
  {
    first_name: string_parts[0],
    last_name: string_parts[1],
    email: string_parts[2],
    street_address: string_parts[3],
    suburb: string_parts[4]
  }
end

puts result