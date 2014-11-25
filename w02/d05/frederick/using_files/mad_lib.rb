print "Do you want to create a new mad lib(y/n)"
new_mad_lib = gets.strip

if new_mad_lib == 'y'
	if File.exists? 'old_mac.txt'
		File.unlink('old_mac.txt')
	end
end

unless File.exists? 'old_mac.txt'
	file = File.new('old_mac.txt', 'a+')
	file.close

puts "Input Adjective: "
adjective = gets.strip

puts "Input Noun: "
noun = gets.strip

puts "Input Animal: "
animal = gets.strip

puts "Input Noise: "
noise = gets.strip

File.open('old_mac.txt', 'a+') do |old_mac|
	old_mac.write("#{adjective} Macdonald had a #{noun}, E-I-E-I-O \n")
	old_mac.write("and on that #{noun} he had an #{animal}, E-I-E-I-O \n")
	old_mac.write("with a #{noise} #{noise} here \n")
	old_mac.write("and a #{noise} #{noise} there, \n")
	old_mac.write("here a #{noise}, there a #{noise}, \n")
	old_mac.write("everywhere a #{noise} #{noise}, \n")
	old_mac.write("#{adjective} Macdonald had a #{noun}, E-I-E-I-O. \n")
end

else
	file = File.new('old_mac.txt')
	puts file.read
end