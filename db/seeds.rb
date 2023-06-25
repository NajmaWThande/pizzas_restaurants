# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.create(name: "Sottocasa NYC", address: "298 Atlantic Ave, Brooklyn, NY 11201")
Restaurant.create(name: "PizzArte", address: "69 W 55th St, New York, NY 10019")

Pizza.create(name: "Cheese", ingredients: "Dough, Tomato Sauce, Cheese")
Pizza.create(name: "Pepperoni", ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni")

RestaurantPizza.create(restaurant: Restaurant.first, pizza: Pizza.first, price: 10)
RestaurantPizza.create(restaurant: Restaurant.first, pizza: Pizza.second, price: 12)
