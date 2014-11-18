class VideoGames
  attr_accessor :make, :bit, :output

  def initialize(make, bit, output)
    self.make = manufacturer
  end

  def list
    puts "Manufacturer: #{make}"
  end
end
