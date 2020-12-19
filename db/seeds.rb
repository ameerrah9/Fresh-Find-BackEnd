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

veg = List.create(name: 'Vegetables', item: cucu.id)
fruit = List.create(name: 'Fruit', item: kiwi.id)
past = List.create(name: 'Pastries', item: app.id)
milk = List.create(name: 'Milk', item: alm.id)
live = List.create(name: 'Livestock', item: sp.id)
crops = List.create(name: 'Crops' item: .id)
nuts = List.create(name: 'Nuts' item: cucu.id)
berries = List.create(name: 'Berries' item: cucu.id)

herb = Item.create(content: 'Fresh Rosemary')
app = Item.create(content: 'Home-baked Apple Pie')
sqh = Item.create(content: 'Organic Squa')
cucu = Item.create(content: 'Homegrown Cucumbe')
kw = Item.create(content: 'Organic Kiwi')
ban = Item.create(content: 'Banana')
sp = Item.create(content: 'Farm-raised Sheep')
alm = Item.create(content: 'Almond Mil')
pea = Item.create(content: 'Organic Peanut')
cran = Item.create(content: 'Organic Cranberries')
