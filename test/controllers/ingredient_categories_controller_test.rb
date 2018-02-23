require 'test_helper'

class IngredientCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ingredient_category = ingredient_categories(:one)
  end

  test "should get index" do
    get ingredient_categories_url, as: :json
    assert_response :success
  end

  test "should create ingredient_category" do
    assert_difference('IngredientCategory.count') do
      post ingredient_categories_url, params: { ingredient_category: { note: @ingredient_category.note, recipe_id: @ingredient_category.recipe_id, title: @ingredient_category.title } }, as: :json
    end

    assert_response 201
  end

  test "should show ingredient_category" do
    get ingredient_category_url(@ingredient_category), as: :json
    assert_response :success
  end

  test "should update ingredient_category" do
    patch ingredient_category_url(@ingredient_category), params: { ingredient_category: { note: @ingredient_category.note, recipe_id: @ingredient_category.recipe_id, title: @ingredient_category.title } }, as: :json
    assert_response 200
  end

  test "should destroy ingredient_category" do
    assert_difference('IngredientCategory.count', -1) do
      delete ingredient_category_url(@ingredient_category), as: :json
    end

    assert_response 204
  end
end
