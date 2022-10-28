class Item
  attr_accessor :price, :amount

  def self.from_file(path)
    raise NotImplementedError
  end

  def initialize(params)
    @price = params[:price].to_i
    @amount = params[:amount].to_i
  end

  def update(params)
    @amount = params[:amount].to_i if params.key?(:amount)
    @price = params[:price].to_i if params.key?(:price)
  end
end
