class ShoppingCart
  attr_reader :items, :cost

  def initialize
    @items = []
    @cost = 0
  end

  def add_item!(item)
    @items << item
    @cost += item.price
  end
end
