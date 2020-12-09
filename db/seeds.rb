# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Maybe seed data with external API

List.create(name: 'Vegetables')

Item.create(content: 'Carrots', list: List.all.sample)
Item.create(content: 'Squash', list: List.all.sample)
Item.create(content: 'Cucumber', list: List.all.sample)
Item.create(content: 'Brocolli', list: List.all.sample)
