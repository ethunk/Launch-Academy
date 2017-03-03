#part 1

require'pry'

board_a = [
  ['x', 'o', 'x'],
  ['x', nil, 'o'],
  ['x', 'o', nil]
]

def print_grid(board)
  board.each_with_index do |row, row_index|
    array = []
    row.each do |spot|
      if spot.nil?
        array << "   "
      else
        array << " #{spot} "
      end
    end
    puts array.join("|")
    if row_index < board.length - 1
      11.times {print "-"}
    end
    puts
  end
end

print_grid(board_a)

puts ""
puts "===="
puts ""
#part 2

board_b = [
  [nil, 'o', 'x'],
  ['x', 'o', nil],
  ['x', 'o', nil]
]

def print_grid(board)
  board.each_with_index do |row, row_index|
    array = []
    row.each do |spot|
      if spot.nil?
        array << "   "
      else
        array << " #{spot} "
      end
    end
    puts array.join("|")
    if row_index < board.length - 1
      11.times {print "-"}
    end
    puts
  end
end

print_grid(board_b)
