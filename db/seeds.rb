# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "date"
require "faker"

puts "cleaning database"
Vinyl.destroy_all
User.destroy_all

puts "creating users..."
22.times do |i|
  user = User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end
puts "creating vinyls..."
i = 1

22.times do |i|
  songs = []
   (8..16).to_a.sample.times{ songs << Faker::Book.title }
  album = Vinyl.new(
    album_title: Faker::Music.album,
    genre: Faker::Music.genre,
    artist: Faker::Music.band,
    release_year: Faker::Date.between(from: 2.days.ago, to: Date.today),
    length: (45..95).to_a.sample,
    songs: songs.join(","),
    pickup_adress: Faker::Address.full_address,
    # cover_image: "covers/cover#{i}.png",
    user_id: User.all.sample.id
  )
  file = File.open("app/assets/images/covers/cover#{i}.png")
  album.cover_image.attach(io: file, filename: "cover#{i}.png", content_type: "image/png")
  album.save
  i += 1
end
