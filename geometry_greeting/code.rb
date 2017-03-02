#code goes here
def greet(name)
  puts "Hi #{name}!"
end
greet("Teddy")
puts ""
puts "======"
puts ""
def greet(name)
  random_greeting = ["Hi", "Yo", "Hey", "Howdy"].sample
  puts "#{random_greeting} #{name}!"
end
greet("Teddy")
puts ""
puts "======"
puts ""
def greet(name, language = nil)
  print "Hello what's your name>?"
  name = gets.chomp
  if language == 'spanish'
    puts "Hola #{name}!"
  elsif language == 'italian'
    puts "Ciao #{name}!"
  elsif language == 'french'
    puts "Bonjour #{name}!"
  else
    puts "Hi #{name}!"
  end
end
greet("Teddy", "spanish")
