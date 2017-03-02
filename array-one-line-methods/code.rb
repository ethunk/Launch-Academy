names = [
  "John",
  "Hannah",
  "Mark",
  "Sam",
  "Anna",
  "Sandra",
  "Susan",
  "Julie",
  "Yanni",
  "Eve",
  "Sunny",
  "Matt"
]

## Accessing elements within our `names` array:

# # 1. Retrieve the first name from the `names` array.
puts names.first
puts "=========================="
# # 2. Retrieve the second name from the `names` array.
puts names[1]
puts "=========================="
# # 3. Retrieve the third name from the `names` array.
puts names[2]
puts "=========================="
# # 4. Retrieve the last name from the `names` array.
puts names.last
puts "=========================="
# # 5. Retrieve the second-to-last name from the `names` array.
puts names[-2]
puts "=========================="
# # 6. Create a new array with the first two elements in the `names` array.
names_one = []
names_one << names[0]
names_one << names[1]
puts names_one
puts "=========================="
# # 7. Create a new array with the first four elements in the `names` array.
names_two = []
names_two << names[0]
names_two << names[1]
names_two << names[2]
names_two << names[3]
puts names_two
puts "=========================="
#
# ## Manipulating the `names` array:
#
# # 1. Add your name to the `names` array.
print "Hey what's your name? "
input = gets.chomp
names << input
puts names
puts "=========================="
# # 2. Replace the first element in the array with your best friend's name.
print "What's your best friend's name? "
input_bf = gets.chomp
names.shift
names.unshift (input_bf)
puts names

puts "=========================="
#
# # 3. Reassign the last element in the array with the name of your arch-nemesis.
print "Who is your arch-nemesis?"
nemsis = gets.chomp
names.pop
names << nemsis

puts "=========================="
#
# ## Asking questions about our `names` array:
#
# # 1. How many names are on the list?
puts "How many names are on the list?"
puts names.count
puts "=========================="
#
#
# # 2. Who is the third name on the list?
puts "Who is the third name on the list?"
puts names.fetch(2)
puts "=========================="
#
#
# # 3. Output each name and where it occurs in the array.
names.each_with_index do |name, index|
  puts "#{index + 1}) #{name}"
end
puts "=========================="
#
#
# # 4. Sort the names in alphabetical order.
puts names.sort
puts "=========================="

# # 5. Sort the names by smallest number of characters to largest.
puts names.sort_by { |name| name.length}
puts "=========================="
# # 6. Supply the sum of all the characters in the list of names.
total = names.inject(0) { |i, name| i + name.length}
puts total
puts "=========================="
# # 7. Do any of the names start with "y"?
if names.include?("y")
  puts "Yes it does."
else
  puts "No it does not."
end
puts "=========================="
# # 8. Are all of the names 3 characters long or larger?
if names.all?{ |name| name.length >= 3}
  puts "Yes."
else
  puts "No."
end
puts "=========================="
# # 9. Using the `names` array, create a new array containing only palindrome names.

pal_names = names.select { |name| name.downcase[0] == name.downcase[-1] }

puts "Palindrome Names:"
puts pal_names

puts "=========================="
# # 10. Find the first name that starts with "S".
puts names.detect { |name| name[0] == "S"}

puts "=========================="
# # # 11. Create a new array containing names that start with "S".
s_names = names.select { |name| name[0] == "S"}

puts s_names

puts "=========================="
# # # 12. Create a new array of names ending with a vowel.
vowel_names = names.select { |name| name[-1] == "a" || name[-1] == "e" || name[-1] == "i" || name[-1] == "o" || name[-1] == "u"}

puts vowel_names

puts "=========================="
# # # 13. Divide the names into groups of 3.
short_names = names.select { |name| name.length <= 3}

puts "Short Names:"
puts short_names
puts "=========================="
medium_names = names.select { |name| name.length <= 5 && name.length > 3}
puts "Medium Names:"
puts medium_names
puts "=========================="
long_names = names.select { |name| name.length == 6 && name.length > 5}
puts "Long Names:"
puts long_names
puts "=========================="
