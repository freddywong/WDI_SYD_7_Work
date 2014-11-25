
require "pry"
class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def cost(*orders)
#splat puts it in an array so we can loop over them
    # cost = 0
    # the_order.keys.each do |element_of_array|
    #   cost += @menu[the_item] * the_order[the_item]
    # end

    orders.inject(0) do |total_cost, order|
	    total_cost + order.keys.inject(0) do |sum, key|
	      cost + @menu[key] * order[key]
	    end
	end
  end
end

baker_bros = Restaurant.new(
  {
    rice: 3,
    noodles: 2
  }
)
puts baker_bros.cost(
  {

    rice: 1,
    noodles: 1
  },
    {

    rice: 2,
    noodles: 3
  }
)

# [{rice: 1, noodles: 1}, {rice: 2, noodles: 3}]

