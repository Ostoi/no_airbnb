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
User.destroy_all
user = User.create(email: "han@solo.com", password: "Ishotfirst")
spaceflight = Spaceflight.create!(
  name: "Millenium Falcon",
  user_id: user.id,
  duration: rand(0..100),
  overview: "Can do the ___ in 12 parsecs",
  cabin_class: "It's not the palace, princess.",
  departure_location: "Endor",
  destination: "Hoth"
)
file = File.open("app/assets/images/millenium_falcon.png")
spaceflight.ship_image.attach(io: file, filename: "millenium falcon.png", content_type: 'image/jpeg')
spaceflight.save!
user = User.create(email: "klingonsrule@startrek.com", password: "654321")
spaceflight = Spaceflight.create!(
  name: "Gowron",
  user_id: user.id,
  duration: rand(0..100),
  overview: "If you were a true Klingon, I would kill you where you stand.",
  cabin_class: "Klingon-y",
  departure_location: "Q'onoS",
  destination: "Genesis"
)
file = File.open("app/assets/images/klingon.png")
spaceflight.ship_image.attach(io: file, filename: "klingon.png", content_type: 'image/jpeg')
spaceflight.save!
user = User.create(email: "AdmiralKirk@startrek.com", password: "klingonssuck")
spaceflight = Spaceflight.create!(
  name: "Admiral James T. Kirk",
  user_id: user.id,
  duration: rand(0..100),
  overview: "Captain's log, stardate 9529.1. This is the final cruise of the starship Enterprise under my command.",
  cabin_class: "Captain",
  departure_location: "Earth",
  destination: "Genesis"
)
file = File.open("app/assets/images/enterprise.png")
spaceflight.ship_image.attach(io: file, filename: "enterprise.png", content_type: 'image/jpeg')
spaceflight.save!
 user = User.create(email: "Lonestar@spaceballs.com", password: "YOGURT")
 spaceflight = Spaceflight.create!(
   name: "Lonestar",
   user_id: user.id,
   duration: rand(0..100),
   overview: "Ludicrous speed",
   cabin_class: "Captain",
   departure_location: "Druidia",
   destination: "The Moon of Vega"
 )
 file = File.open("app/assets/images/Spaceballs-eagle5.png")
 spaceflight.ship_image.attach(io: file, filename: "spaceballs.png", content_type: 'image/jpeg')
 spaceflight.save!
user = User.create(email: "StarLord@guardians.com", password: "Ronansucks")
spaceflight = Spaceflight.create!(
  name: "Peter Quill",
  user_id: user.id,
  duration: rand(0..100),
  overview: "We are groot",
  cabin_class: "Captain",
  departure_location: "Earth",
  destination: "Ego"
)
file = File.open("app/assets/images/quill.png")
spaceflight.ship_image.attach(io: file, filename: "quill.png", content_type: 'image/jpeg')
spaceflight.save!
user = User.create(email: "akbar@rebellion.com", password: "darthwho?")
spaceflight = Spaceflight.create!(
  name: "Admiral Akbar",
  user_id: user.id,
  duration: rand(0..100),
  overview: "It's a trap!",
  cabin_class: "Admiral",
  departure_location: "Hoth",
  destination: "Death Star"
)
file = File.open("app/assets/images/X-wing.png")
spaceflight.ship_image.attach(io: file, filename: "X-wing.png", content_type: 'image/jpeg')
spaceflight.save!
# "Rotarran_BrelBoP.png", "FhlostonInSpace.png", "odysseystation.png", "USS_Voyager.png",  "starfox.png", "Serenityship.png", "Event_horizon.png",
user = User.create(email: "adent@hitchikers.com", password: "Dontpanic")
spaceflight = Spaceflight.create!(
  name: "Arthur Dent",
  user_id: user.id,
  duration: rand(0..100),
  overview: "Have towel will travel",
  cabin_class: "HeartofGold",
  departure_location: "Earth",
  destination: "Vogsphere"
)
file = File.open("app/assets/images/Heartofgold.png")
spaceflight.ship_image.attach(io: file, filename: "Heartofgold.png", content_type: 'image/jpeg')
spaceflight.save!
user = User.create(email: "marvin@mars.com", password: "ihatebugs")
spaceflight = Spaceflight.create!(
  name: "Marvin the Martian",
  user_id: user.id,
  duration: rand(0..100),
  overview: "Oh, drat these computers. They are so naughty and so complex. I could pinch them.",
  cabin_class: "Martian",
  departure_location: "Earth",
  destination: "Mars"
)
file = File.open("app/assets/images/marvin.png")
spaceflight.ship_image.attach(io: file, filename: "marvin.png", content_type: 'image/jpeg')
spaceflight.save!
puts "Finished!"
