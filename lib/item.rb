class Item
  attr_reader :price, :amount, :name

  def self.from_file(path)
    raise NotImplementedError
  end

  def initialize(params)
    @price = params[:price].to_i
    @amount = params[:amount].to_i
    @name = params[:name]
  end

  def update(params)
    @amount = params[:amount].to_i if params.key?(:amount)
    @price = params[:price].to_i if params.key?(:price)
  end
end
