require_relative "lib/book"
require_relative "lib/item_collection"
require_relative "lib/movie"
require_relative "lib/shopping_cart"

collection = ItemCollection.from_dir(File.join(__dir__, "data"))
cart = ShoppingCart.new
loop do
  puts "Select an item to buy:"
  puts
  collection.to_a.each.with_index(1) { |item, index| puts "#{index}. #{item}" }
  puts

  input = gets
  puts
  index = input.to_i - 1
  unless input.match?(/\A\d+\Z/) && index < collection.to_a.size
    puts "Invalid choice. Please, try again."
    puts
    redo
  end

  break if index.negative?

  selected_item = collection.to_a[index]
  if selected_item.amount.zero?
    puts "Sorry, this item is not available at the moment."
    redo
  end
  cart.add_item!(selected_item)
  selected_item.amount -= 1
  puts "You chose #{selected_item}"
  puts
  puts "Cost of you purchases is #{cart.cost}"
  puts
end

puts "Your purchases:"
puts
puts cart.items
puts
puts "Your payment is #{cart.cost}. Thanks for your purchases!"
