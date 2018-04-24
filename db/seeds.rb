# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
# Creating 100 fake users
100.times do
  user = User.create(name: Faker::Company.name)
end

100.times do
  article = Article.create(title: Faker::HowIMetYourMother.quote, body: Faker::Lorem.sentence(255), description: Faker::Lorem.sentence(10), user_id: rand(100))
end

100.times do
  category = Category.create(name: Faker::Cat.name)
end

100.times do
  junction = Junction.create(category_id: rand(100), article_id: rand(100))
end
