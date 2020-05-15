# COCKTAILS
puts "Cleaning database..."
Cocktail.destroy_all
puts "Creating cocktails..."
martini = { name: "Martini" }
pina_collada = { name: "Pina collada" }
negroni = { name: "Negroni" }
paloma = { name: "Paloma" }
[ martini, pina_collada, negroni, paloma ].each do |attributes|
  cocktail = Cocktail.create!(attributes)
  puts "Created #{cocktail.name}"
end
puts "Finished!"
# INGREDIENTS
puts "Cleaning database..."
Ingredient.destroy_all
puts "Creating ingredients..."
lemon = { name: "lemon" }
ice = { name: "ice" }
mint = { name: "mint leaves" }
[ lemon, ice, mint ].each do |attributes|
  ingredient = Ingredient.create!(attributes)
  puts "Created #{ingredient.name}"
end
puts "Finished!"
