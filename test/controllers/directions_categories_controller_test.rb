require 'test_helper'

class DirectionsCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @directions_category = directions_categories(:one)
  end

  test "should get index" do
    get directions_categories_url, as: :json
    assert_response :success
  end

  test "should create directions_category" do
    assert_difference('DirectionsCategory.count') do
      post directions_categories_url, params: { directions_category: { note: @directions_category.note, recipe_id: @directions_category.recipe_id, title: @directions_category.title } }, as: :json
    end

    assert_response 201
  end

  test "should show directions_category" do
    get directions_category_url(@directions_category), as: :json
    assert_response :success
  end

  test "should update directions_category" do
    patch directions_category_url(@directions_category), params: { directions_category: { note: @directions_category.note, recipe_id: @directions_category.recipe_id, title: @directions_category.title } }, as: :json
    assert_response 200
  end

  test "should destroy directions_category" do
    assert_difference('DirectionsCategory.count', -1) do
      delete directions_category_url(@directions_category), as: :json
    end

    assert_response 204
  end
end
