json.extract! recipe_title, :id, :name, :category, :ingredient, :created_at, :updated_at
json.url recipe_title_url(recipe_title, format: :json)