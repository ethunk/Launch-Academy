# YOUR CODE, HERE
dice1 = rand(6) + 1
dice2 = rand(6) + 2
roll = dice1 + dice2
input = ""

while input != "S" do
  print "Press 'Enter' to roll the dice, 'S' to stop."
  input = gets.chomp
  break if input == "S"
  dice1 = rand(6) + 1
  dice2 = rand(6) + 2
  roll = dice1 + dice2
  puts "You rolled a #{dice1} & #{dice2}"
  puts "Which is #{roll}"
  if input == "S"
    puts "Thanks for playing!"
  end
end

if input == "S"
  puts "Thanks for playing!"
end
