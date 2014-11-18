module HappiTrails
  class Shelter
    attr_accessor :client,
                  :animal,

    def initialize(client, animal)
      @client = client
      @animal = animal
    end

    def to_s
      "Shelter:\n" +
      "  Client: #{@client.length}\n" +
      "  Animal: #{@animal.length}\n"
    end
  end
end