class RecipeConverter
  def initialize(recipe)
    @recipe = recipe
  end

  def to_tablespoons
    @recipe.map do |ingredient|
      ingredient.each { |ing, grams| ingredient[ing] = (grams/15) }
    end
  end

  def to_cups
    to_tablespoons.map do |ingredient|
      ingredient.each { |ing, tbs| ingredient[ing] = (tbs/16) }
    end
  end
end