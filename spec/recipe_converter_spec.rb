require 'rspec'
require 'recipe_converter'

describe RecipeConverter do
  it "converts from g to tbs" do
    recipe = RecipeConverter.new([{"sugar" => 30}, {"flour" => 45}, {"water" => 15}])
    expect(recipe.to_tablespoons).to eq [{"sugar" => 2}, {"flour" => 3}, {"water" => 1}]
  end

  it "converts from g to cups" do
    recipe = RecipeConverter.new([{"sugar" => 480}, {"flour" => 720}, {"water" => 240}])
    expect(recipe.to_cups).to eq [{"sugar" => 2}, {"flour" => 3}, {"water" => 1}]
  end
end