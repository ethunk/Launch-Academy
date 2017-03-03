

time_capsule = ["comptometer",
  "box of phonographic records",
  "plastic savings bank",
  "set of scales",
  "toast-o-lator",
  "sample of aluminum foil",
  "donald duck doll"]

print "Hey what's your name?"
name = gets.chomp.downcase

puts "#{name}, thanks for trying our Time Capsule maker."
puts "Here is a list of the items in your Time Capsule!:"
puts time_capsule
puts "============="

items = ""
while true do
  print "Is there anything else you want to add? If not type 'finished'"
  items = gets.chomp.downcase
if items == "finished"
  #stop
  break
else
  puts "How many would you like?"
  quantity = gets.chomp.to_i
  time_capsule << items += " (#{quantity} ct)"
end
end
puts "=============="
puts "Ok #{name}, thanks for trying out our Time Capsule!"
puts "Here is your new list!"
time_capsule.each do |item|
  puts "*#{item}"
end
