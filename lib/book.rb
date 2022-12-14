require_relative "item"

class Book < Item
  attr_accessor :genre, :author

  def self.from_file(path)
    data = File.readlines(path, chomp: true)
    new(
      title: data[0],
      genre: data[1],
      author: data[2],
      price: data[3],
      amount: data[4]
    )
  end

  def initialize(params)
    super
    @title = params[:title]
    @genre = params[:genre]
    @author = params[:author]
  end
  
  def update(params)
    super
    @title = params[:title] if params.key?(:title)
    @genre = params[:genre] if params.key?(:genre)
    @author = params[:author] if params.key?(:author)
  end

  def to_s
    "#{@title}, #{@genre}, written by #{@author}, price #{@price}"
  end
end
