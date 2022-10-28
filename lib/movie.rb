require_relative "item"

class Movie < Item
  attr_accessor :year, :director

  def self.from_file(path)
    data = File.readlines(path, chomp: true).first(5)
    new(
      title: data[0],
      director: data[1],
      year: data[2],
      price: data[3],
      amount: data[4]
    )
  end

  def initialize(params)
    super
    @title = params[:title]
    @year = params[:year]
    @director = params[:director]
  end

  def update(params)
    super
    @title = params[:title] if params.key?(:title)
    @year = params[:year] if params.key?(:year)
    @director = params[:director] if params.key?(:director)
  end

  def to_s
    "#{@title}, #{@year}, directed by #{@director}, price #{@price} (remaining #{@amount})"
  end
end
