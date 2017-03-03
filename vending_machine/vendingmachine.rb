items_we_have = "chips popcorn skittles clif-bar mentos gum cheetos m&ms"
puts "what would you like to eat?"
input = gets.chomp

item_index = items_we_have.index(input)
if item_index.nil?
  puts "We don't have that item."
else
  puts "Item index:"
  puts item_index
end
