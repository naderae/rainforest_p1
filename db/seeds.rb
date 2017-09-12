# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
  product_1 = Product.create(name: 'ball', description: 'authentic NBA ball', price_in_cents: 15)
  product_2 = Product.create(name: 'rim', description: 'authentic NBA rim', price_in_cents: 10)
  product_3 = Product.create(name: 'shoes', description: 'Curry 3 shoes', price_in_cents: 150)
#
#
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
