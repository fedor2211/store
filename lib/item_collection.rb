require_relative "book"
require_relative "disc"
require_relative "movie"

class ItemCollection
  ITEM_TYPES = [
    {dir: "movies", item: Movie},
    {dir: "books", item: Book},
    {dir: "discs", item: Disc}
  ]

  def self.from_dir(dir)
    collection = []
    ITEM_TYPES.each do |type|
      Dir.glob(File.join(dir, type[:dir], "*")).each do |file|
        collection << type[:item].from_file(file)
      end
    end
    new(collection)
  end

  def initialize(collection)
    @collection = collection
  end

  def sort!(params)
    case params[:by]
    when :title
      @collection.sort_by!(&:to_s)
    when :price
      @collection.sort_by!(&:price)
    when :amount
      @collection.sort_by!(&:amount)
    end
    @collection.reverse! if params[:order] == :desc
  end

  def to_a
    @collection
  end
end
