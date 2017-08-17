require 'json'
require 'open-uri'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Cocktail.destroy_all
# Ingredient.destroy_all


url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)

array_of_hashes = ingredients['drinks']

array_of_hashes.each do |hash|
  name = hash["strIngredient1"]
  Ingredient.create(name: name)
end

# first_hash_in_array = ingredients['drinks'][0]

# puts first_hash_in_array["strIngredient1"]



# Cocktail.create(cocktails)
