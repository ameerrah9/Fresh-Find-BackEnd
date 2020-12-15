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

veg = List.create(name: 'Vegetables')
fruit = List.create(name: 'Fruit')
past = List.create(name: 'Pastries')
milk = List.create(name: 'Milk')
live = List.create(name: 'Livestock')
crops = List.create(name: 'Crops')
nuts = List.create(name: 'Nuts')
berries = List.create(name: 'Berries')

herb = Item.create(content: 'Fresh Rosemary', list_id: crops.id)
app = Item.create(content: 'Home-baked Apple Pies', list_id: past.id)
sqh = Item.create(content: 'Organic Squash', list_id: veg.id)
cucu = Item.create(content: 'Homegrown Cucumbers', list_id: veg.id)
kw = Item.create(content: 'Organic Kiwi', list_id: fruit.id)
ban = Item.create(content: 'Banana', list_id: fruit.id)
sp = Item.create(content: 'Farm-raised Sheep', list_id: live.id)
alm = Item.create(content: 'Almond Milk', list_id: milk.id)
pea = Item.create(content: 'Organic Peanuts', list_id: nuts.id)
cran = Item.create(content: 'Organic Cranberries', list_id: berries.id)
