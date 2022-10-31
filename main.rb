require_relative "lib/book"
require_relative "lib/item_collection"
require_relative "lib/movie"
require_relative "lib/shopping_cart"

collection = ItemCollection.from_dir(File.join(__dir__, "data"))
item_list = collection.to_a
cart = ShoppingCart.new
loop do
  puts "Select an item to buy:"
  puts
  item_list.each.with_index(1) do |item, index|
    puts "#{index}. #{item} (remaining #{item.amount})"
  end
  puts "0. Exit"
  puts

  choice = gets.chomp
  puts
  unless ("0"..item_list.size.to_s).include?(choice)
    puts "Invalid choice. Please, try again."
    puts
    redo
  end

  break if choice == "0"

  selected_item = item_list[choice.to_i - 1]
  if selected_item.amount.zero?
    puts "Sorry, this item is not available at the moment."
    redo
  end
  cart.add_item!(selected_item)
  selected_item.amount -= 1
  puts "You chose #{selected_item}"
  puts
  puts "Items in your cart:"
  puts cart
  puts
  puts "Cost of you purchases is #{cart.cost}"
  puts
  puts
end

puts "Your purchases:"
puts
puts cart
puts
puts "Your payment is #{cart.cost}. Thanks for your purchases!"
