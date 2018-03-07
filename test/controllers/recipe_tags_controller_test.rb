require 'test_helper'

class RecipeTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_tag = recipe_tags(:one)
  end

  test "should get index" do
    get recipe_tags_url, as: :json
    assert_response :success
  end

  test "should create recipe_tag" do
    assert_difference('RecipeTag.count') do
      post recipe_tags_url, params: { recipe_tag: { recipe_id: @recipe_tag.recipe_id, tag_id: @recipe_tag.tag_id } }, as: :json
    end

    assert_response 201
  end

  test "should show recipe_tag" do
    get recipe_tag_url(@recipe_tag), as: :json
    assert_response :success
  end

  test "should update recipe_tag" do
    patch recipe_tag_url(@recipe_tag), params: { recipe_tag: { recipe_id: @recipe_tag.recipe_id, tag_id: @recipe_tag.tag_id } }, as: :json
    assert_response 200
  end

  test "should destroy recipe_tag" do
    assert_difference('RecipeTag.count', -1) do
      delete recipe_tag_url(@recipe_tag), as: :json
    end

    assert_response 204
  end
end
