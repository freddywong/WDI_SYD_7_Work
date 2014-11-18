module HappiTrails
  class Animal
    attr_accessor :name,
                  :age,
                  :gender,
                  :species,
                  :toys

    def initialize(name, age, gender, species, toys)
      @name = name
      @age = age
      @gender = gender
      @species = species
      @toys = toys
    end

    def to_s
      "Animal:\n" +
      "  Name: #{@name}\n" +
      "  Age: #{@age}\n" +
      "  Gender: #{@gender}\n" +
      "  Species: #{@species}\n" +
      "  toys: #{@toys}\n"
    end
  end
end