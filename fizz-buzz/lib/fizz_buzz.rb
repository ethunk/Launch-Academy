# YOUR CODE HERE
numbers = [1 - 100]
numbers.each do |number|
  puts "#{numbers}"
end

if numbers /= 3
  puts "Fizz"
elsif /= 5
  puts "Buzz"
elsif /= 3 || 5
  puts "Fizz Buzz"
end
