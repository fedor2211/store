class Item
  attr_reader :price, :amount, :name

  def self.from_file(path)
    raise NotImplementedError
  end

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
    @name = params[:name]
  end

  def update(params)
    @amount = params[:amount] if params.key?(:amount)
    @price = params[:price] if params.key?(:price)
  end
end
