# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create(email: "some_email@some.com", password: "123456")

Spaceflight.create(name: "Space X", duration: 80, overview: "Nice view of the Galaxy", user:user)
puts "finish"
