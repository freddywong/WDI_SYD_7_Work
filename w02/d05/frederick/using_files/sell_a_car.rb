print "Do you want to create a car ad? (This will delete the previous ad) (y/n)"
new_ad = gets.strip

if new_ad == "y"
	if File.exists? 'ad.txt'
		File.unlink('ad.txt')
	end
end

#step 1: Make sure we have a file
unless File.exists? 'ad.txt'
	file = File.new('ad.txt', 'a+')
	file.close
#step 2: Ask questions
puts "Number of KMs"
number_of_kms = gets.strip.to_i


print "What kind of doors does it have?:"
door_type = gets.strip

print "Does it have a sunroof?: "
sunroof = gets.strip

print "What kind of engine: "
engine = gets.strip

print "What is the asking price: "
price = gets.strip.to_i

#step 3: write the data
File.open('ad.txt', 'a+') do |ad_file|
	ad_file.write("Number of KMs: #{number_of_kms}\n")
	ad_file.write("Door type: #{door_type}\n")
	ad_file.write("Sunroof: #{sunroof}\n")
	ad_file.write("Engine type: #{engine}\n")
	ad_file.write("Asking price: #{price}\n")
	
end	
else
#step 4: display the file
	file = File.new('ad.txt')
	puts file.read
end

