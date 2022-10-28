require_relative "item"

class Movie < Item
  def initialize(params)
    super
    @year = params[:year]
    @director = params[:director]
  end

  def update(params)
    super
    @year = params[:year] if params.key?(:year)
    @director = params[:director] if params.key?(:director)
  end

  def to_s
    "#{@name}, #{@year}, directed by #{@director}, price #{@price} (remaining #{@amount})"
  end
end
