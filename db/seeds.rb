# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts "Cleaning database"
Spaceflight.destroy_all

user = User.create(email: Faker::Internet.email, password: "123456")

# Spaceflight.create(name: "Space X", duration: 80, overview: "Nice view of the Galaxy", user_id: user.id)
# puts "finish"

10.times do
  user = User.create(email: "#{Faker::Internet.email}", password: "123456")
  spaceflight = Spaceflight.create!(
    name: Faker::Space.nasa_space_craft,
    user_id: user.id,
    duration: Faker::Space.distance_measurement,
    overview: Faker::Space.nasa_space_craft,
    cabin_class: Faker::Space.nasa_space_craft,
    departure_location: Faker::Space.nasa_space_craft,
    destination: Faker::Space.nasa_space_craft,
    ship_image: ["jenterprise.png", "klingon.png", "Rotarran_BrelBoP.png", "Spaceballs-eagle5.png", "quill.png", "FhlostonInSpace.png", "odysseystation.png", "USS_Voyager.png", "marvin.png", "enterprise.png", "X-wing.png", "starfox.png", "Serenityship.png", "Event_horizon.png", "millenium_falcon.png"].sample
  )
  spaceflight.save!
end
puts "Finished!"
