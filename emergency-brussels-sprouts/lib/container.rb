class Container
  attr_reader :weight, :maximum_holding_weight
  attr_accessor :ingredients

  def initialize(weight, maximum_holding_weight)
    @weight = weight
    @maximum_holding_weight = maximum_holding_weight
    @ingredients = []
  end

  def which_ingredient
    @ingredients[0].name
  end

  def fill_with_ingredient(ingredient)
    quantity = @maximum_holding_weight / ingredient.weight
    quantity.to_i.times do
      ingredients << ingredient
    end
  end

  def how_many_ingredients
    @ingredients.count
  end

  def remove_one_ingredient
   @ingredients = @ingredients.drop(1)
 end

 def empty
   @ingredients = []
 end

 def weight
     if @ingredients.empty?
       @weight
     else
     ingredient_weight = @ingredients.count * @ingredients[0].weight
     ingredient_weight.to_i + @weight
     end
 end
 
end
