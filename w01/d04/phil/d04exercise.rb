people_csv = [
  "Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town"
]
people_csv << "Philip,Hancock,philipdhancock@gmail.com,124 Fake Street,Fake Town"
people_csv << "John,Smith,john@work.com,125 Fake Street,Fake Town"
people_csv << "Peter,Smith,peter@work.com,126 Fake Street,Fake Town"
people_csv << "Harry,Smith,harry@work.com,127 Fake Street,Fake Town"
people_csv << "Bob,Smith,bob@work.com,128 Fake Street,Fake Town"
people_csv << "Colin,Smith,colin@work.com,129 Fake Street,Fake Town"
people_csv << "Trevor,Smith,trevor@work.com,130 Fake Street,Fake Town"
people_csv << "Joel,Smith,joel@work.com,131 Fake Street,Fake Town"
people_csv << "Alice,Smith,alice@work.com,132 Fake Street,Fake Town"
people_csv << "Barbara,Smith,babara@work.com,133 Fake Street,Fake Town"
 
# p people_csv

# people_csv.each {|x| y = x.split(","); {first_name: y[0], last_name: y[1], email: y[2], street_address: y[3], suburb: y[4]}}

# p people_csv

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

