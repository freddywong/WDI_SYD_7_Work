require "Pry"

class Car
  attr_accessor :color, :seating, :material, :year, :max_speed
end

class Ferrari < Car
  def fastcar
    "Color: #{self.color}"
    "Seating: #{self.seating}"
    "Material: #{self.material}"
    "Year: #{self.year}"
    "Max Speed: #{self.max_speed}"
  end
end

class AlfaRomeo < Car
  def fastcar
    super
    "Color: #{self.color}"
  end
end

class Lancia < AlfaRomeo
  def fastcar
    super
    "Color: #{self.color}"
  end
end

class Fiat < Lancia
  def slowcar
    "Color: #{self.color}"
  end
end

dino = Ferrari.new
dino.color = "red"
puts dino.color

lucia = AlfaRomeo.new
lucia.color = "green"
puts lucia.color