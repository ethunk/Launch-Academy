#testcode

def greet(name)
  "Hi #{name}!"
end

puts greet("Teddy")

puts ""
puts "===="
puts ""

def greet(name)
  greetings = ["Hi", "Yo", "Hey", "Howdy"]
  "#{greetings.sample} #{name}!"
end

puts greet("Teddy")

puts ""
puts "===="
puts ""

def greet(name, language = nil)
  greetings = {
    "English" => "Hi",
    "Spanish" => "Hola",
    "Italian" => "Ciao", 
    "French" => "Bonjour"
  }

  if language == nil
    "#{greetings["English"][value]} #{name}!"
  else
    "#{greetings.values.sample} #{name}!"
  end

end

puts greet("Teddy")
