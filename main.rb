require_relative "lib/book"
require_relative "lib/movie"

m1 = Movie.new(price: 200, amount: 34)
b1 = Book.new(price: 150, amount: 23)
puts "movie 1 price is #{m1.price}"
puts "book 1 price is #{b1.price}"
