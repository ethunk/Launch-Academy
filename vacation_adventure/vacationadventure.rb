DICE_ROLL = rand(6)

puts "Let's roll the dice to find out what we get to do today!"
puts "Do you want to roll the dice?"
input = gets.chomp

if input == "yes"
  puts DICE_ROLL
else input == "no"
  puts "Fine stay at home with no TV!"
end

if DICE_ROLL == 1
  puts "Let's go on a safari"
elsif DICE_ROLL == 2
  puts "Let's go scuba diving!"
elsif DICE_ROLL == 3
  puts "Let's go jet skiing"
elsif DICE_ROLL == 4
  puts "Let's go elephant riding"
elsif DICE_ROLL == 5
  puts "Let's go conga dancing"
elsif DICE_ROLL == 6
  puts "Let's go eat at a buffet!"
end
