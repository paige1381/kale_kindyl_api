require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get recipes_url, as: :json
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post recipes_url, params: { recipe: { cook: @recipe.cook, desc1: @recipe.desc1, desc2: @recipe.desc2, desc3: @recipe.desc3, image1: @recipe.image1, image2: @recipe.image2, image3: @recipe.image3, prep: @recipe.prep, serves: @recipe.serves, title: @recipe.title } }, as: :json
    end

    assert_response 201
  end

  test "should show recipe" do
    get recipe_url(@recipe), as: :json
    assert_response :success
  end

  test "should update recipe" do
    patch recipe_url(@recipe), params: { recipe: { cook: @recipe.cook, desc1: @recipe.desc1, desc2: @recipe.desc2, desc3: @recipe.desc3, image1: @recipe.image1, image2: @recipe.image2, image3: @recipe.image3, prep: @recipe.prep, serves: @recipe.serves, title: @recipe.title } }, as: :json
    assert_response 200
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete recipe_url(@recipe), as: :json
    end

    assert_response 204
  end
end
