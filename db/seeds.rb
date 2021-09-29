# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all

demoUser = User.create!(email: 'forfrodo@gondor.com', password: 'tomordor')

user1 = User.create!(email: 'user1@gmail.com', password: 'password')
user2 = User.create!(email: 'user2@gmail.com', password: 'password')
user3 = User.create!(email: 'user3@gmail.com', password: 'password')
user4 = User.create!(email: 'user4@gmail.com', password: 'password')
user5 = User.create!(email: 'user5@gmail.com', password: 'password')
user6 = User.create!(email: 'user6@gmail.com', password: 'password')
user7 = User.create!(email: 'user7@gmail.com', password: 'password')



