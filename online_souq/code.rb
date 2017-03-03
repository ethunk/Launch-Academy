print "Hello, what is your name?"
name = gets.chomp
puts "#{name}, thanks for trying our online Souq platform!"
puts "Here is a list of the items in your cart."
items = ['potato', 'red onion', 'dried lemon', 'glass spiced jar']
items.each do |item|
  puts "*#{item}"
end

input = ""
souq_cart = Array.new

while true do
  puts "What would you like to buy now? If done then type 'finished'."
  puts ""
  input = gets.chomp.downcase

  if input =="finished"
    puts "Ok great!"
    break
  elsif items.include?(input)
    souq_cart.push(input)
  else
    puts "Sorry we don't have that item in store."
  end
end

puts "#{name}, thanks for trying our shopping cart, here are your items!"

souq_cart.each do |item|
  puts "*#{item}"
end
