require_relative "item"

class Book < Item
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
