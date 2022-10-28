require_relative "item"

class Book < Item
  def initialize(params)
    super
    @genre = params[:genre]
    @author = params[:author]
  end
  
  def to_s
    "#{@name}, #{@genre}, written by #{@author}, price #{@price} (remaining #{@amount})"
  end
end
