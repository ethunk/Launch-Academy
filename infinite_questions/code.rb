require 'pry'

input = ""

while input != "no" do
  print "Can I get you anything?"
  input = gets.chomp
  binding.pry
  puts "#{input}"
end

puts "Okay, bye!"
