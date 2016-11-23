require 'test_helper'

class RecipeTitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_title = recipe_titles(:one)
  end

  test "should get index" do
    get recipe_titles_url
    assert_response :success
  end

  test "should get new" do
    get new_recipe_title_url
    assert_response :success
  end

  test "should create recipe_title" do
    assert_difference('RecipeTitle.count') do
      post recipe_titles_url, params: { recipe_title: { category: @recipe_title.category, ingredient: @recipe_title.ingredient, name: @recipe_title.name } }
    end

    assert_redirected_to recipe_title_url(RecipeTitle.last)
  end

  test "should show recipe_title" do
    get recipe_title_url(@recipe_title)
    assert_response :success
  end

  test "should get edit" do
    get edit_recipe_title_url(@recipe_title)
    assert_response :success
  end

  test "should update recipe_title" do
    patch recipe_title_url(@recipe_title), params: { recipe_title: { category: @recipe_title.category, ingredient: @recipe_title.ingredient, name: @recipe_title.name } }
    assert_redirected_to recipe_title_url(@recipe_title)
  end

  test "should destroy recipe_title" do
    assert_difference('RecipeTitle.count', -1) do
      delete recipe_title_url(@recipe_title)
    end

    assert_redirected_to recipe_titles_url
  end
end
