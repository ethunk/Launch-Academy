def print_puzzle(word)

  (word.size).times do
    print "-"
  end

end

print_puzzle("perimeter")

puts ""
puts "====="
puts ""

def print_puzzle (word, guesses = [])
  word.each_char do |char|
    if guesses.include?(char)
      print "#{char} "
    else
      print "-"
    end
  end
end

print_puzzle("triangle", ["t", "s", "g"])
