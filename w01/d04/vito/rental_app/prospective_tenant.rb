class ProspectiveTenant
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    self.name = name
    self.age = age
    self.gender = gender
  end
end