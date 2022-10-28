require_relative "lib/book"
require_relative "lib/movie"

m1 = Movie.new(price: 200, amount: 34, name: "Leon", year: 1995, director: "Luc Besson")
b1 = Book.new(price: 150, amount: 23, name: "War of the worlds", genre: "scifi", author: "Herbert Walse")
puts m1
puts b1
