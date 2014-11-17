class Block
  attr_accessor :name, :height, :length, :color

  def initialize (name, height, length, color)
    self.name = name
    self.height = height
    self.length = length
    self.color = color
  end

  def to_s
    string = "Block:\n"
    string += "Name: #{name}\n"
    string += "Height: #{height}\n"
    string += "Color: #{color}\n"
  end

end

class Blocknos

  attr_accessor :name, :height, :length, :color

  def initialize (name, height, length, color)
    self.name = name
    self.height = height
    self.length = length
    self.color = color
  end

end

Block_one = Block.new("Block One", 100, 40, "Red")
Block_two = Block.new("Block Two", 200, 50, "Blue")
Block_three = Blocknos.new("BLock Three", 300, 60, "Green")
Block_four = Blocknos.new("Block Four", 400, 100, "Yellow")

blocks = []
blocks << Block_one
blocks << Block_two
blocks << Block_three
blocks << Block_four

puts Block_one

puts Block_three

puts blocks 


