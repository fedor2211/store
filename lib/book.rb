require_relative "item"

class Book < Item
  attr_accessor :genre, :author

  def self.from_file(path)
    data = File.readlines(path, chomp: true).first(5)
    new(
      name: data[0],
      genre: data[1],
      author: data[2],
      price: data[3],
      amount: data[4]
    )
  end

  def initialize(params)
    super
    @genre = params[:genre]
    @author = params[:author]
  end
  
  def update(params)
    super
    @genre = params[:genre] if params.key?(:genre)
    @author = params[:author] if params.key?(:author)
  end

  def to_s
    "#{@name}, #{@genre}, written by #{@author}, price #{@price} (remaining #{@amount})"
  end
end
