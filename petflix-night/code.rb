dramas = [
  "Stanger Llamas",
  "Game of Bones",
  "Llama Actually",
  "Grey's Catanomy",
  "Breaking Baaaaahhhd"
]

animations = [
  "Bojack Man",
  "Family Dog",
  "Futurellama",
  "Barkcher",
  "American Dog",
  "Pokemon",
  "Bob's Barkers"
]

comedies = [
  "Barks and Recreation",
  "30 Cats",
  "Bones",
  "Girl meets Cat",
  "Gilmore Cats",
  "New Dog",
  "Catlandia",
  "Full Mouse"
]

all_shows = [
  "Stanger Llamas",
  "Game of Bones",
  "Llama Actually",
  "Grey's Catanomy",
  "Breaking Baaaaahhhd",
  "Bojack Man",
  "Family Dog",
  "Futurellama",
  "Barkcher",
  "American Dog",
  "Pokemon",
  "Bob's Barkers",
  "Barks and Recreation",
  "30 Cats",
  "Bones",
  "Girl meets Cat",
  "Gilmore Cats",
  "New Dog",
  "Catlandia",
  "Full Mouse"
]

#YOUR CODE GOES HERE
puts"Hey let's watch some drama movies! My favorite is when a llama is in it!"
llama_drama = dramas.select { |movie| movie if movie.include?("Llama")}
puts "*Dramas with Llamas: #{llama_drama}"
puts "============="
puts "What about cartoons? I like cartoons with dogs!"
cartoon_dogs = animations.select { |cartoon| cartoon if cartoon.include? ("Dog")}
puts "*Animation Woof: #{cartoon_dogs}"
puts "============="
puts "We are pretty picky with our comedy. Anything with cats is a NOPE!"
no_cats = comedies.reject { |comedy| comedy if comedy.include? ("Cat")}
puts "Cat Free Hilarity: #{no_cats}"
puts "============="
puts "Us humans have the final say so before we decide, let's organize!"
puts "* #{all_shows.sort}"
