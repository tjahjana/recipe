require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
    @recipe_title = recipe_titles(:one)
  end
  test "make sure association works here" do
    assert_equal 1, @user.recipe_titles.size
    assert_equal @user.recipe_titles.where(:id => 1).first, @recipe_title
  end
end
