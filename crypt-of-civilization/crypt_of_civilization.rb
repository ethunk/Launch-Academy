# Your code, here.
crypt_of_civilization = []
print "We have found some artifacts! What do you want to add?"

input = ""
while true
  input = gets.chomp
  if input == "finished"
    break
  else
    puts "Anything else you want to add? If not, type 'finished'"
    crypt_of_civilization << input
  end
end
puts "Our Crypt is fileld with: #{crypt_of_civilization}"

puts "========================="

puts "Holy Hamlet Batman! We forgot some things!"

extra = []

print "What do you want to add?"

extra_input = ""
while true
  extra_input = gets.chomp
  if extra_input == "finished"
    break
  else
    puts "Anything else you want to add? If not, type 'finished'"
    extra << extra_input
  end
end

puts "Our Extra Cyrpt has: #{extra}"

puts "========================="

puts "Let's combine the two!"

crypt_of_civilization = crypt_of_civilization + extra

puts "Now our Crypt has: #{crypt_of_civilization}"

puts "========================="

puts "How many items are in the array?"
puts "There are #{crypt_of_civilization.length}"

puts "========================="

puts "What is the first item in the array?"
puts "The first item is #{crypt_of_civilization.first}"

puts "========================="

puts "What is the last item on the array?"
puts "The last item is #{crypt_of_civilization.last}"

puts "========================="

puts "What is the second item in the array?"
puts "The second item is #{crypt_of_civilization[1]}"

puts "========================="

puts "What is the third item in the array?"
puts "The third item is #{crypt_of_civilization[2]}"

puts "========================="

puts "What is the second to last item in the array?"
puts "The second to last item is #{crypt_of_civilization[-2]}"

puts "========================="

puts "What is the index of the Toast-O-Lator"
puts crypt_of_civilization.index { |item| item == "Toast-O-Lator" }

puts "========================="

puts "Does the array contain a Container of beer?"
if crypt_of_civilization.include?("Container of beer")
  puts "Yes it does!"
else
  puts "No it does not unfortunately!"
end

puts "========================="

puts "That's great! What about a Toast-O-Lator?"
if crypt_of_civilization.include?("Toast-O-Lator")
  puts "Yes it does!"
else
  puts "No it does not unfortunately!"
end

puts "========================="

puts "Wow! Any chances of you having a Plastic bird?"
if crypt_of_civilization.include?("Plastic bird")
  puts "Yes it does!"
else
  puts "No it does not unfortunately!"
end
puts "Aw shucks, maybe next time."

puts "========================="

puts "Let's organize!"
puts "By length."
puts "#{crypt_of_civilization.sort_by { |item| item.length }}"

puts "========================="

puts "By alphabetical order."
puts "#{crypt_of_civilization.sort}"

puts "========================="

puts "By reverse order."
puts "#{crypt_of_civilization.sort.reverse}"

puts "========================="

count = 0
while count < crypt_of_civilization.length
  puts crypt_of_civilization[count]
  count += 1
end

puts "========================="

crypt_of_civilization.each do |item|
  puts item
end

puts "========================="

crypt_of_civilization.shift

crypt_of_civilization.pop

crypt_of_civilization.delete ("Set of scales")

crypt_of_civilization.delete ("Sample of aluminum")

puts "========================="
