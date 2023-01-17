# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning Database 🗑️"
Clothe.destroy_all

puts "Seeding clothes data 👚"

clothe_one = Clothe.create(title: "Superb Dress", price: 30, category: "dress", description: "great")
clothe_two = Clothe.create(title: "Superb Top", price: 50, category: "top", description: "awesome")

clothe_one.save!
clothe_two.save!

puts clothe_one.title
