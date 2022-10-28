require_relative "lib/book"
require_relative "lib/movie"

m1 = Movie.new(name: "Leon", director: "Luc Besson")
m1.update(price: 200, amount: 100, year: 1995)
b1 = Book.new(name: "War of the worlds", author: "Herbert Walse")
b1.update(price: 150, amount: 50, genre: "scifi")
puts m1
puts b1
