require 'pry'

puts "Welcome to the Guessing Game! What difficulty would you like to play?"
puts "Type 'easy' or 'hard'!"
input = gets.chomp

puts "> #{input}"

nope = "Nope, please try again"
score = 0

if input == "easy"
  puts "I've picked a number between 1 and 10. Now guess it!"
  easy = rand(10) + 1
  binding.pry
  while true do
    score += 1
    number = gets.chomp.to_i
    if number == easy
      puts "You win! Nice job!"
      puts "Your score was " + score.to_s
      break
    else
      puts nope
    end
  end
elsif input == "hard"
  puts "I've picked a number between 1 and 20. Now guess it!"
  hard = rand(20) + 1
  binding.pry
  while true do
    score += 1
    number = gets.chomp.to_i
    if number == hard
      puts "You win! Nice job!"
      puts "Your score was " + score.to_s
      break
    else
      puts nope
    end
  end
else
  puts "Not a difficulty, restart program!"
end
