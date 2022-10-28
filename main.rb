require_relative "lib/book"
require_relative "lib/movie"

m1 = Movie.from_file("./data/movies/01.txt")
b1 = Book.from_file("./data/books/01.txt")
puts m1
puts b1
