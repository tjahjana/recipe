# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
user1 = User.create(first_name: "Tito", last_name: "Mueller")


RecipeTitle.delete_all
#RecipeTitle.create(name: "Chili con Carne", category: "Fleisch", ingredient: "Rindfleisch, Bohnen")
#RecipeTitle.create(name: "Wrap", category: "Gemuese", ingredient: "Mozzarella, Salat, Pfannkuchen")
recipeTitle1 = user1.recipe_titles.create(name: "Chili con Carne", category: "Fleisch", ingredient: "Rindfleisch, Bohnen")
recipeTitle2 = user1.recipe_titles.create(name: "Wrap", category: "Gemuese", ingredient: "Mozzarella, Salat, Pfannkuchen")
