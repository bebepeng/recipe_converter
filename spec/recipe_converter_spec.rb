require 'rspec'
require 'recipe_converter'

describe RecipeConverter do
  it "converts from g to tbs" do
    recipe = RecipeConverter.new([{"sugar" => 30}, {"flour" => 45}, {"water" => 15}])
    expect(recipe.to_tablespoons).to eq [{"sugar" => 2}, {"flour" => 3}, {"water" => 1}]
  end
end