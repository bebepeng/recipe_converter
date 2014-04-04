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
end