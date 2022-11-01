class ShoppingCart
  attr_reader :items

  def initialize
    @items = []
  end

  def add_item!(item)
    @items << item
  end

  def items_amount
    @items.size
  end

  def cost
    @items.map(&:price).sum
  end

  def to_s
    @items.tally.map { |item, amount| "(#{amount}) #{item}" }.join("\n")
  end
end
