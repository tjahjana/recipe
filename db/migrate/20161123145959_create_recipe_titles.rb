class CreateRecipeTitles < ActiveRecord::Migration[5.0]
  def change
    create_table :recipe_titles do |t|
      t.string :name
      t.string :category
      t.string :ingredient

      t.timestamps
    end
  end
end
