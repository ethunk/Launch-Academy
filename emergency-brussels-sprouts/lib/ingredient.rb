require'pry'

class Ingredient
  attr_reader :name, :weight

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def self.create_from_grams(name, weight)
    kilograms = weight / 1000
    Ingredient.new(name, kilograms)
  end

end
