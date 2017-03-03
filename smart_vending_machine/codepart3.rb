#ask the user their name
print "Hello, I am Charlie, the talking vending machine! What's your name?"
name = gets.chomp
#ask the user what they want
print "Hello #{name}, what would you like today?"
food = gets.chomp

tons = ""

while !(tons == 0) do
  print "Please enter quantity or 'tons'"
  input = gets.chomp
  tons = rand(14)
  if "tons".index(input).nil?
    tons.times do
      puts food
    end
  else
    puts "Please try again."
  end
  if tons == 0
    break
  end
end

puts "There ya go #{name}, come back soon!"
