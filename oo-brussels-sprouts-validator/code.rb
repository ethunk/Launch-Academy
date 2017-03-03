# part 1
require'pry'

kale_quinoa_salad = [
  'quinoa',
  'kale',
  "avacado",
  "cucumber",
  'red bell pepper',
  'red onion',
  'feta cheese'
]

class Ingredient

  def initialize(quantity = nil, unit = nil, name)
    @quantity = quantity
    @unit = unit
    @name = name
  end

  def valid?
    safe = [
      'brussels sprouts',
      'spinach',
      'eggs',
      'milk',
      'tofu',
      'seitan',
      'bell peppers',
      'quinoa',
      'kale',
      'chocolate',
      'beer',
      'wine',
      'whiskey'
    ]
    safe.each do |ingredient|
      check = @name.include?(ingredient)
      if check
        return true
      end
        return false
    end
  end

  def recipe
    if valid? == true
      return true
    end
    if valid? == false
      return false
    end
  end

  def self.parse(foods)
    split = foods.split(" ")
    quantity = split[0].to_i
    unit = split[1]
    name = split[2]

    Ingredient.new(quantity, unit, name)
  end

end

# food = Ingredient.new(kale_quinoa_salad)
# binding.pry

puts ""
puts "==="
puts ""
#part 2

safe_name = "Eggnog with Bourbon"

safe_ingredients = [
  Ingredient.new(2.0, "cups", "milk"),
  Ingredient.new(2.0, "cups", "half & half"),
  Ingredient.new(2.0, "cinnamon sticks"),
  Ingredient.new(1.0, "vanilla beans"),
  Ingredient.new(0.5, "teaspoon", "nutmeg"),
  Ingredient.new(6.0, "egg yolks"),
  Ingredient.new(0.75, "cups", "sugar"),
  Ingredient.new(4.0, "ounces", "bourbon whiskey")
]

safe_instructions = [
  "Bring milk, half & half, cinnamon stcks, vanilla beans and nutmeg just to boil in a medium saucepan on low heat.",
  "Beat egg yolks and sugar in medium bowl until pale yellow in color and fluffy.",
  "Gradually add one cup of the hot milk mixture to the egg yolks, beating with a wire whisk on low speed..",
  "Gradually whisk the egg yolk, sugar and milk mixture back into the remaining milk in the saucepan.",
  "Cook and stir on medium-low heat for 3 – 5 minutes or until mixture thickens and coats the back of a spoon. Do not rush this stage or your mixture could curdle.",
  "Strain into a large bowl. Pour into a container and allow to cool. Add bourbon, cover tightly and refrigerate overnight or until well chilled. Best if allowed to meld for 2-3 days but can be served immediately",
  "Fill lowball glasses with ice, pour bourbon eggnog mixture over ice and dust with nutmeg.",
  "Have zero regrets!"
]

class Recipe
  def initialize(name, instructions, ingredients)
    @safe_name = name
    @safe_instructions = instructions
    @safe_ingredients = ingredients
  end

  def has_allergens?
     @safe_ingredients.each do |ingredient|
         ingredient.valid?
     end
  end

  def summary
    "Is #{safe_recipe.name} safe? #{safe_recipe.has_allergens?}"
  end
end

safe_recipe = Recipe.new(safe_name, safe_instructions, safe_ingredients)
binding.pry
