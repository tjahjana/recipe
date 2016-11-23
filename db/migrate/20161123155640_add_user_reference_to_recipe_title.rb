class AddUserReferenceToRecipeTitle < ActiveRecord::Migration[5.0]
  def change
    add_reference :recipe_titles, :user, foreign_key: true
  end
end
