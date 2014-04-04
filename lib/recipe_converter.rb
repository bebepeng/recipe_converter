class RecipeConverter
  def initialize(recipe)
    @recipe = recipe
  end

  def to_tablespoons
    recipe_tbs = []
    @recipe.each do |ingredient|
      ingredient.each { |ingredient, grams| recipe_tbs << {ingredient => (grams/15)} }
    end
    recipe_tbs
  end

  def to_cups
    recipe_cups = []
    to_tablespoons.each do |ingredient|
      ingredient.each { |ingredient, tbs| recipe_cups << {ingredient => (tbs/16)} }
    end
    recipe_cups
  end
end