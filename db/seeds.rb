# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "date"

Vinyl.destroy_all
User.destroy_all
Booking.destroy_all

user_one = User.create(
  email: "visitor@lewagon.com",
  password: "123456789", first_name: "Heloise", last_name: "Leblant", user_name: "helolo")

  user_one = User.create(
    email: "visitor2@lewagon.com",
    password: "123456789", first_name: "Ollie", last_name: "Pugh", user_name: "Broccoli")


vinyl_one = Vinyl.create(
  album_title: "Born to die",
  cover_image: "https://d1c4rk9le5opln.cloudfront.net/c89ec7865567c43696a363efe83be0fb.jpg",
  release_year: Date.new(2009,9,1),
  genre: "pop",
  songs: "Video Games, Born To die, Blue Jeans, National Anthem",
  user_id: user_one.id
)


Vinyl.create(
  album_title: "Ultraviolence",
  cover_image: "https://d1c4rk9le5opln.cloudfront.net/c89ec7865567c43696a363efe83be0fb.jpg",
  release_year: Date.new(2009,9,1),
  genre: "pop",
  songs: "Video Games, Born To die, Blue Jeans, National Anthem",
  user_id: user_one.id
)
puts vinyl_one
puts user_one

booking = Booking.new(
  begin_date: Date.new(2023,8,1),
  end_date: Date.new(2023,8,23)
)

booking.vinyl = vinyl_one
booking.user = user_one
booking.save!
