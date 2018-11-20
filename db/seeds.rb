# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

specialty = ["plombier", "carreleur", "menuisier", "ébeniste", "chauffagiste", "electricien", "maçon", "jardinier", "paysagiste", "tapissier", "peintre"]

puts 'Cleaning database...'
User.destroy_all


puts 'Creating users...'

10.times do
  user = User.new(
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.phone_number,
    birthdate: Faker::Date.backward(14),
    photo: 'https://kitt.lewagon.com/placeholder/users/random',
    address: Faker::Address.city,
    password: 'secret',
    artisan: false,
  )
  user.save!
end

puts 'creating artisans'

10.times do
  user = User.new(
    email: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    phone_number: Faker::PhoneNumber.phone_number,
    birthdate: Faker::Date.backward(14),
    specialty: specialty.sample,
    company: Faker::Company.name,
    siret: Faker::Number.number(10),
    realisations: "https://s1.lmcdn.fr/multimedia/fb1500838806/11b12593aa913/produits/douche/new-douche.jpg?p=md-w330",
    photo: 'https://kitt.lewagon.com/placeholder/users/random',
    address: Faker::Address.city,
    password: 'secret',
    artisan: true,
  )
  user.save!
end

puts 'Finished!'
