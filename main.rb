require_relative "lib/book"
require_relative "lib/item_collection"
require_relative "lib/movie"

collection = ItemCollection.from_dir(File.join(__dir__, "data"))
payment = 0
purchases = []
loop do
  puts "Select an item to buy:"
  puts
  collection.to_a.each.with_index(1) { |item, index| puts "#{index}. #{item}" }
  puts

  input = gets
  puts
  index = input.to_i - 1
  unless input.match?(/^\d+$/) && index < collection.to_a.size
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
  payment += selected_item.price
  selected_item.amount -= 1
  purchases << selected_item
  puts "You chose #{selected_item}"
  puts
  puts "Your payment is #{payment}"
  puts
end

puts "Your purchases:"
puts
purchases.each { |item| puts item }
puts
puts "Your payment is #{payment}. Thanks for your purchases!"
