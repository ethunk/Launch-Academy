my_array = [1,2,3,4,5]

new_array = []
my_array.each do |element|
  if (element % 2 == 0)
    new_array << element
  end
end

puts new_array #=> [2, 4]

# is equivalent to:
puts my_array.select { |element| element % 2 == 0 } #=> [2, 4]
