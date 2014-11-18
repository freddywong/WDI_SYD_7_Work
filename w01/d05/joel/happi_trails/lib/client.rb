module HappiTrails
  class Client
    attr_accessor :name,
                  :number_of_children,
                  :age,
                  :pets

    def initialize(name, number_of_children, age, pets)
      @name = name
      @number_of_children = number_of_children
      @age = age
      @pets = []
    end

    def to_s
      "Client:\n" +
      "  Name: #{@name}\n" +
      "  Children: #{@number_of_children}" +
      "  Age: #{@age}\n" +
      "  Pets: #{@number_of_pets}\n"
    end
  end
end