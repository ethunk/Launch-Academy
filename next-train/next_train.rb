# YOUR CODE HERE
trains = ["Train 1", "Train 2", "Train 3", "Train 4", "Train 5", "Train 6", "Train 7", "Train 8", "Train 9", "Train 10", "Train 11", "Train 12", "Train 13"]
train_times = [2, 5, 7.5, 8.5, 9, 10, 11.5, 13.5, 14.5, 17, 18, 19, 24]

input = ""
while true do
puts "What time are you leaving? You need at least a half hour."
input = gets.chomp.to_f

if (0..1.5).include? input
  train = trains[0]
  time = train_times[0]
  puts "You should catch #{train} leaving at #{time}."
  break
elsif (1.6..4.5).include? input
  train = trains[1]
  time = train_times[1]
  puts "You should catch #{train} leaving at #{time}."
  break
elsif (4.6..7).include? input
  train = trains[2]
  time = train_times[2]
  puts "You should catch #{train} leaving at #{time}."
  break
elsif (7.1..8).include? input
  train = trains[3]
  time = train_times[3]
  puts "You should catch #{train} leaving at #{time}."
  break
elsif (8.1..8.5).include? input
  train = trains[4]
  time = train_times[4]
  puts "You should catch #{train} leaving at #{time}."
  break
elsif (8.6..9.5).include? input
  train = trains[5]
  time = train_times[5]
  puts "You should catch #{train} leaving at #{time}."
  break
elsif (9.6..11).include? input
  train = trains[6]
  time = train_times[6]
  puts "You should catch #{train} leaving at #{time}."
  break
elsif (11.1..13).include? input
  train = trains[7]
  time = train_times[7]
  puts "You should catch #{train} leaving at #{time}."
  break
elsif (13.1..14).include? input
  train = trains[8]
  time = train_times[8]
  puts "You should catch #{train} leaving at #{time}."
  break
elsif (14.1..16.5).include? input
  train = trains[9]
  time = train_times[9]
  puts "You should catch #{train} leaving at #{time}."
  break
elsif (16.6..17.5).include? input
  train = trains[10]
  time = train_times[10]
  puts "You should catch #{train} leaving at #{time}."
  break
elsif (17.6..18.5).include? input
  train = trains[11]
  time = train_times[11]
  puts "You should catch #{train} leaving at #{time}."
  break
elsif (1.6..23.5).include? input
  train = trains[12]
  time = train_times[12]
  puts "You should catch #{train} leaving at #{time}."
  puts "Wait that reminds me of my favorite song!!!"
  puts "Just a small town girl
Living in a lonely world
She took the midnight train going anywhere
Just a city boy
Born and raised in South Detroit
He took the midnight train going anywhere

A singer in a smoky room
A smell of wine and cheap perfume
For a smile they can share the night
It goes on and on and on and on

Strangers waiting, up and down the boulevard
Their shadows searching in the night
Streetlights people, living just to find emotion
Hiding, somewhere in the night."
  break
else
  puts "That's not a right time."
end
end
