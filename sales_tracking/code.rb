# Your code, here.
require 'pry'

print "let's get some sales today!"
total_sales = 0
input = ""

while !(input == "n") do
puts "how much was that sale"
  sale1 = gets.chomp
  puts "ok our first sale was $#{sale1}"
  puts "ok how about our second sale?"
  sale2 = gets.chomp
  puts "ok our second sale was $#{sale2}"
  puts "ok what about third sale?"
  sale3 = gets.chomp
  puts "ok our third sale was $#{sale3}"
  puts "what about our last sale?"
  sale4 = gets.chomp
  total_sales = sale1.to_i + sale2.to_i + sale3.to_i + sale4.to_i
if total_sales > 100
  puts "Great job we reached over $100 with $#{total_sales} in sales!"
  puts "Would you like to make more? (y/n)"
  input = gets.chomp
else total_sales < 100
  puts "We need more sales! Get back to work!"
end
if input == "y"
  puts "great let's get more sales!"
elsif input == "n"
  puts "thanks for your hard work today!"
  break
  end
end
