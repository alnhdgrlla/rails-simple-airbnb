# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "deleting flats..."
Flat.delete_all

puts "creating flats..."
20.times do |flat|
  name = Faker::FunnyName.three_word_name
  address = Faker::Address.full_address
  description = Faker::Lorem.paragraphs
  price_per_night = Faker::Number.between(from: 50, to: 200)
  number_of_guests = Faker::Number.between(from: 1, to: 10)

  Flat.create!(
    name: name,
    address: address,
    description: description,
    price_per_night: price_per_night,
    number_of_guests: number_of_guests,
    )
end

puts "finished!"
