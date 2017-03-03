#code goes here


def rectangle(width, height)
  perimeter = (2 * width) + (2 * height)
  puts "The perimeter is #{perimeter}"
end

rectangle(2, 6)

puts ""
puts "====="
puts ""

def rectangle(width, height = nil)
  if height.nil?
    square_perimeter = 4 * width
    puts "The perimeter is #{square_perimeter}"
  else
    perimeter = (2 * width) + (2 * height)
    puts "The perimeter is #{perimeter}"
  end
end

rectangle(2)
