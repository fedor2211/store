require_relative "item"

class Disc < Item
  attr_accessor :album, :artist, :genre, :year

  def self.from_file(path)
    data = File.readlines(path, chomp: true)
    new(
      album: data[0],
      artist: data[1],
      genre: data[2],
      year: data[3],
      price: data[4],
      amount: data[5]
    )
  end

  def initialize(params)
    super
    @album = params[:album]
    @artist = params[:artist]
    @genre = params[:genre]
    @year = params[:year]
  end

  def update(params)
    super
    @album = params[:album] if params.key?(:album)
    @artist = params[:artist] if params.key?(:artist)
    @genre = params[:genre] if params.key?(:genre)
    @year = params[:year] if params.key?(:year)
  end

  def to_s
    "#{@artist} - #{@album}, #{@genre}, #{@year}, #{@price} (remaining #{@amount})"
  end
end
