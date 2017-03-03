#ask the user their name
print "Hello, I am Charlie, the talking vending machine! What's your name?"
name = gets.chomp
#ask the user what they want
print "Hello #{name}, what would you like today?"
food = gets.chomp
#ask the user quantity
print "Please enter quantity."
quantity = gets.chomp.to_i
#produce loop
quantity.times do
  puts food
end

puts "There ya go #{name}, come back soon!"
