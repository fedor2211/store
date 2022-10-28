require_relative "item"

class Movie < Item
  def initialize(params)
    super
    @year = params[:year]
    @director = params[:director]
  end

  def to_s
    "#{@name}, #{@year}, directed by #{@director}, price #{@price} (remaining #{@amount})"
  end
end
