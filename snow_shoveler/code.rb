puts "I can shovel your snow for a price!"

width = 8
length = 20
height = 8.0 / 12.0

cubic_feet = width * length * height

if cubic_feet < 50
  puts price = "$20"
elsif cubic_feet < 150
  puts price = "$50"
elsif cubic_feet < 300
  puts price = "$100"
else
  puts price = "$150 "
end

puts "Ok so total Cubic Feet: #{cubic_feet}"
puts "Here is my Quote Price: #{price}"
