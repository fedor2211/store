class ShoppingCart
  attr_reader :items, :cost

  def initialize
    @items = Hash.new(0)
    @cost = 0
  end

  def add_item!(item)
    @items[item] += 1
    @cost += item.price
  end

  def to_s
    @items.map { |item, amount| "(#{amount}) #{item}" }.join("\n")
  end
end
