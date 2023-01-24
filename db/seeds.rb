# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning Database 🗑️"
Clothe.destroy_all
User.destroy_all
Booking.destroy_all

puts "Seeding clothes data 👚"
user_one = User.create(password: "123456", email: "salut@gmail.com", first_name: "Sabrina", last_name: "Achab")
user_two = User.create(password: "123456", email: "coucou@gmail.com", first_name: "Oriane", last_name: "Corral")

file = File.open("/home/oriane/code/shiningmoonsunshine/rented/app/assets/images/Body.jpg")
clothe_one = Clothe.new(title: "Superb Body", price: 60, category: "body", description: "great", address: "7, Rue Sainte-Isaure", user: user_one)
clothe_one.photo.attach(io: file, filename: "Body.jpg", content_type: "image/jpg")
clothe_one.save

file = File.open("/home/oriane/code/shiningmoonsunshine/rented/app/assets/images/Dress.jpg")
clothe_two = Clothe.new(title: "Superb Dress", price: 60, category: "dress", description: "beautiful", address: "7, Rue Sainte-Isaure", user: user_one)
clothe_two.photo.attach(io: file, filename: "Dress.jpg", content_type: "image/jpg")
clothe_two.save

file = File.open("/home/oriane/code/shiningmoonsunshine/rented/app/assets/images/Jacket.jpg")
clothe_three = Clothe.new(title: "Superb Jacket", price: 60, category: "jacket", description: "outstanding", address: "7, Rue Sainte-Isaure", user: user_one)
clothe_three.photo.attach(io: file, filename: "Jacket.jpg", content_type: "image/jpg")
clothe_three.save

file = File.open("/home/oriane/code/shiningmoonsunshine/rented/app/assets/images/Onesie.jpg")
clothe_four = Clothe.new(title: "Superb Onesie", price: 50, category: "onesie", description: "practical", address: "7, Rue Sainte-Isaure", user: user_one)
clothe_four.photo.attach(io: file, filename: "Onesie.jpg", content_type: "image/jpg")
clothe_four.save

file = File.open("/home/oriane/code/shiningmoonsunshine/rented/app/assets/images/Parka.jpg")
clothe_five = Clothe.new(title: "Superb Parka", price: 50, category: "parka", description: "fashionable", address: "7, Rue Sainte-Isaure", user: user_one)
clothe_five.photo.attach(io: file, filename: "Parka.jpg", content_type: "image/jpg")
clothe_five.save

file = File.open("/home/oriane/code/shiningmoonsunshine/rented/app/assets/images/Shirt.jpg")
clothe_six = Clothe.new(title: "Superb Shirt", price: 30, category: "shirt", description: "On style", address: "7, Rue Sainte-Isaure", user: user_one)
clothe_six.photo.attach(io: file, filename: "Shirt.jpg", content_type: "image/jpg")
clothe_six.save

file = File.open("/home/oriane/code/shiningmoonsunshine/rented/app/assets/images/Shoes.jpg")
clothe_seven = Clothe.new(title: "Superb Shoes", price: 30, category: "shoes", description: "comfortable", address: "7, Rue Sainte-Isaure", user: user_one)
clothe_seven.photo.attach(io: file, filename: "Shoes.jpg", content_type: "image/jpg")
clothe_seven.save

file = File.open("/home/oriane/code/shiningmoonsunshine/rented/app/assets/images/Shorts.jpg")
clothe_eight = Clothe.new(title: "Superb Shorts", price: 20, category: "shorts", description: "Elegant", address: "7, Rue Sainte-Isaure", user: user_one)
clothe_eight.photo.attach(io: file, filename: "Shorts.jpg", content_type: "image/jpg")
clothe_eight.save

file = File.open("/home/oriane/code/shiningmoonsunshine/rented/app/assets/images/Skirt.jpg")
clothe_nine = Clothe.new(title: "Superb Skirt", price: 20, category: "skirt", description: "Graceful", address: "7, Rue Sainte-Isaure", user: user_one)
clothe_nine.photo.attach(io: file, filename: "Skirt.jpg", content_type: "image/jpg")
clothe_nine.save

file = File.open("/home/oriane/code/shiningmoonsunshine/rented/app/assets/images/Tshirt.jpg")
clothe_ten = Clothe.new(title: "Superb Tshirt", price: 10, category: "Tshirt", description: "Pretty", address: "7, Rue Sainte-Isaure", user: user_one)
clothe_ten.photo.attach(io: file, filename: "Tshirt.jpg", content_type: "image/jpg")
clothe_ten.save

book_one = Booking.create!(start_date: Date.today, end_date: Date.tomorrow, status: true, user: user_one, clothe: clothe_one)
book_two = Booking.create!(start_date: Date.today, end_date: Date.tomorrow, status: false, user: user_one, clothe: clothe_two)
