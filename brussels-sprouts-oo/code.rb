#YOUR CODE GOES HERE
require'pry'

class Ingredient
  def initialize(quantity, unit, name)
    @quantity = quantity.to_f
    @unit = unit
    @name = name
  end
  def summary
    puts "- #{@quantity}, #{@unit}, #{@name}"
  end
end

name = "Roasted Brussels Sprouts"

instructions = [
"Preheat oven to 400 degrees F.",
"Cut off the brown ends of the Brussels sprouts.",
"Pull off any yellow outer leaves.",
"Mix them in a bowl with the olive oil, salt and pepper.",
"Pour them on a sheet pan and roast for 35 to 40 minutes.",
"They should be until crisp on the outside and tender on the inside.",
"Shake the pan from time to time to brown the sprouts evenly.",
"Sprinkle with more kosher salt ( I like these salty like French fries).",
"Serve and enjoy!"
]

ingredients = [
Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
]

class Recipe
  attr_accessor :name, :instructions, :ingredients

  def initialize(name, ingredients, instructions)
    @name = name
    @ingredients = ingredients
    @instructions = instructions
  end

  def display_name
    puts "Roasted Brussels Sprouts"
    puts ""
  end

  def display_ingredients
    @ingredients.map { |ingredient| ingredient.summary }.join("\n")
    puts ""
  end

  def display_instructions
    @instructions.each_with_index do |string, index|
     puts "#{index + 1}. #{string}"
    end
  end

  def summary
    [display_name, display_ingredients, display_instructions].join("\n")
  end

end

recipe = Recipe.new(name, ingredients, instructions)

recipe.summary
