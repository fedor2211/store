require_relative "lib/book"
require_relative "lib/item_collection"
require_relative "lib/movie"

collection = ItemCollection.from_dir("./data")
puts collection.to_a
puts
collection.sort!(by: :amount, order: :asc)
puts collection.to_a
puts
collection.sort!(by: :price, order: :asc)
puts collection.to_a
puts
collection.sort!(by: :name, order: :asc)
puts collection.to_a
puts
