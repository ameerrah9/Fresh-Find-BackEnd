# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Maybe seed data with external API
List.destroy_all
Item.destroy_all

# List
crops, fruit, vegetables = List.create([{ name: 'Crops' }, { name: 'Fruit' }, { name: 'Vegetables' }])

# Crops Items

crops.items.create([{ content: 'Fresh Rosemary' }, { content: 'Fresh Lavender' }])
fruit.items.create([{ content: 'Organic Plums' }, { content: 'Bananas' }])
vegetables.items.create([{ content: 'Cucumbers' }, { content: 'Organic Kale' }])
