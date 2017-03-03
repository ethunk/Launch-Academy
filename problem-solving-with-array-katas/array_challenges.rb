# YOUR CODE, HERE
require 'pry'

long_string = "Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum"

long_sentence = long_string.split(' ')

puts "======================"
words = long_sentence.sort_by { |word| word.length }

puts "The longest word is:"
puts words.max_by(&:length)

puts "======================"
character_array = long_string.downcase.split (' ')

char_counts = []
26.times do
  char_counts << 0
end

character_array.each do |char|
  if char.ord > "a".ord && char.ord <= "z".ord + 25
    char_counts[char.ord - "a".ord] += 1
  end
end


char_index = -1
max_chars = -1

char_counts.each_with_index do |count, index|
  if count > max_chars
    max_chars = count
    char_index = index
  end
end

char = (char_index + "a".ord).chr

puts "The most frequent character is: #{char}"
#
puts "======================"
secret_message = "7 15 15 4 27 4 15 7"
digits = secret_message.split(' ')

characters = digits.map do |digit_string|
  num = digit_string.to_i
  if num == 27
    ' '
  else
  (96 + num).chr
  end
end

puts "The secret code is:"
puts characters.join ('')

puts "======================"

random_numbers = []
10.times do
  random_numbers << rand(9) + 1
end

primes = []
random_numbers.each do |num|

  prime = true
  (2...num).to_a.each do |divisor|
    if num % divisor == 0
      prime = false
      puts "#{num} is not a prime number!"
      break
  end
end

if prime
  primes << num
end
end

puts "The prime numbers are: #{primes}"
puts "======================"
