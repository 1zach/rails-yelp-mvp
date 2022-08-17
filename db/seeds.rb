
require "faker"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Clearing"

Restaurant.destroy_all

Review.destroy_all

puts "Generating..."

5.times do 
    restaurant = Restaurant.create({
        name: Faker::Restaurant.name,
        category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
        phone_number: Faker::PhoneNumber.cell_phone,
        address: Faker::Address.full_address
        })
        puts "created #{restaurant.name}"
    end


