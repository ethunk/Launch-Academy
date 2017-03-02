# YOUR CODE HERE
1.upto(100) do |number|
  puts "*#{number}"
  if number % 3 == 0
    puts "Fizz"
  end
  if number % 5 == 0
    puts "Buzz"
  end
  if number % 3 == 0 && number % 5 == 0
    puts "Fizz Buzz"
  end
end
