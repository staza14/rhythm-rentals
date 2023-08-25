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
    password: "123456"
  )
end
puts "creating vinyls..."

vinyl1 = Vinyl.new(
    album_title: "Renaissance",
    genre: "Pop",
    artist: "Beyonce",
    release_year: Faker::Date.between(from: 2.days.ago, to: Date.today),
    length: (45..95).to_a.sample,
    songs: "Im That Girl, Cozy, Alien Superstar, Cuff It, Energy, Break My Soul, Church Girl, Plastic Off the Sofa, Virgos Groove, Move, Heated, Thique, All Up in Your Mind, America Has a Problem, Pure/Honey, Summer Renaissance",
    pickup_adress: "London",
    price: (5..10).to_a.sample,
    user_id: User.all.sample.id
)
file = File.open("app/assets/images/covers/renaissance.png")
  vinyl1.cover_image.attach(io: file, filename: "renaissance.png", content_type: "image/png")
  vinyl1.save

  vinyl2 = Vinyl.new(
    album_title: "Adele 19",
    genre: "Pop",
    artist: "Adele",
    release_year: Faker::Date.between(from: 2.days.ago, to: Date.today),
    length: (45..95).to_a.sample,
    songs: "Daydreamer, Best For Last, Chasing Pavements, Cold Shoulder, Crazy For You, Melt My Heart To Stone, First Love,Right As Rain, Make You Feel My Love, My Same, Tired, Hometown Glory, That's It I Quit I'm Movin' On, Now And Then, Painting Pictures",
    pickup_adress: "Paris",
    price: (5..10).to_a.sample,
    user_id: User.all.sample.id
)
file = File.open("app/assets/images/covers/adele19.png")
  vinyl2.cover_image.attach(io: file, filename: "adele19.png", content_type: "image/png")
  vinyl2.save

  vinyl3 = Vinyl.new(
    album_title: "Adele 21",
    genre: "Pop",
    artist: "Adele",
    release_year: Faker::Date.between(from: 2.days.ago, to: Date.today),
    length: (45..95).to_a.sample,
    songs:"Rolling In The Deep, Rumour Has It,Turning Tables, Don't You Remember, Set Fire To The Rain, He Won't Go, Take It All, I'll Be Waiting, One And Only, Lovesong, Someone Like You, I Found A Boy, If It Hadn't Been For Love, Hiding My Heart, Need You Now",
    pickup_adress: "London",
    price: (5..10).to_a.sample,
    user_id: User.all.sample.id
)
file = File.open("app/assets/images/covers/adele21.png")
  vinyl3.cover_image.attach(io: file, filename: "adele21.png", content_type: "image/png")
  vinyl3.save

  vinyl4 = Vinyl.new(
    album_title: "Arican Giant",
    genre: "Afrobeat",
    artist: "Burna Boy",
    release_year: Faker::Date.between(from: 2.days.ago, to: Date.today),
    length: (45..95).to_a.sample,
    songs: "African Giant, Anybody, Wetin Man Go Do, Dangote, Gum Body (Ft. Jorja Smith), Killin Dem (Ft. Zlatan), Omo, Secret (Ft. Jeremih & Serani), Collateral Damage, Another Story, Pull Up, Blak Ryno",
    pickup_adress: "London",
    price: (5..10).to_a.sample,
    user_id: User.all.sample.id
)
file = File.open("app/assets/images/covers/africangiant.png")
  vinyl4.cover_image.attach(io: file, filename: "africangiant.png", content_type: "image/png")
  vinyl4.save

  vinyl5 = Vinyl.new(
    album_title: "Bismillah",
    genre: "Pop",
    artist: "Peter Cat Recording Co",
    release_year: Faker::Date.between(from: 2.days.ago, to: Date.today),
    length: (45..95).to_a.sample,
    songs: "Heera, Freezing, Memory Box, Shit Im Dreaming, Floated By",
    pickup_adress: "Toronto",
    price: (5..10).to_a.sample,
    user_id: User.all.sample.id
)
file = File.open("app/assets/images/covers/bismillah.png")
  vinyl5.cover_image.attach(io: file, filename: "bismillah.png", content_type: "image/png")
  vinyl5.save

  vinyl6 = Vinyl.new(
    album_title: "Mac miller Tiny Desk",
    genre: "Hiphop",
    artist: "Mac Miller",
    release_year: Faker::Date.between(from: 2.days.ago, to: Date.today),
    length: (45..95).to_a.sample,
    songs: "Small Worlds, What's the Use?, 2009",
    pickup_adress: "London",
    price: (5..10).to_a.sample,
    user_id: User.all.sample.id
)
file = File.open("app/assets/images/covers/macmilletintydesk.png")
  vinyl6.cover_image.attach(io: file, filename: "macmilletintydesk.png", content_type: "image/png")
  vinyl6.save

  vinyl7 = Vinyl.new(
    album_title: "Return To The 37th Chamber",
    genre: "Jazz",
    artist: "El Michels Affair",
    release_year: Faker::Date.between(from: 2.days.ago, to: Date.today),
    length: (45..95).to_a.sample,
    songs: "4th Chamber, Iron Man, Shaolin Brew, Pork Chop Express, Snakes, Drums For Sale, Shadow Boxing, Sipped Up",
    pickup_adress: "London",
    price: (5..10).to_a.sample,
    user_id: User.all.sample.id
)
file = File.open("app/assets/images/covers/returntothe.png")
  vinyl7.cover_image.attach(io: file, filename: "returntothe.png", content_type: "image/png")
  vinyl7.save

  vinyl8 = Vinyl.new(
    album_title: "Fearless (Taylors Version)",
    genre: "Country",
    artist: "Taylor Swift",
    release_year: Faker::Date.between(from: 2.days.ago, to: Date.today),
    length: (45..95).to_a.sample,
    songs: "Fearless, Fifteen, Love Story, Hey Stephen, White Horse, You Belong With Me, Breathe, Tell Me Why, Forever And Always" ,
    pickup_adress: "London",
    price: (5..10).to_a.sample,
    user_id: User.all.sample.id
)
file = File.open("app/assets/images/covers/fearless.png")
  vinyl8.cover_image.attach(io: file, filename: "fearless.png", content_type: "image/png")
  vinyl8.save

  vinyl9 = Vinyl.new(
    album_title: "Gold Diggers",
    genre: "Rock",
    artist: "Leon Bridges",
    release_year: Faker::Date.between(from: 2.days.ago, to: Date.today),
    length: (45..95).to_a.sample,
    songs: "Born Again, Motorbike, Steam, Why Don't You Touch Me, Magnolias, Gold-Diggers (Junior's Fanfare), Details, Sho Nuff,Sweeter, Don't Worry, Blue Mesas",
    pickup_adress: "London",
    price: (5..10).to_a.sample,
    user_id: User.all.sample.id
)
file = File.open("app/assets/images/covers/gold.png")
  vinyl9.cover_image.attach(io: file, filename: "gold.png", content_type: "image/png")
  vinyl9.save

  vinyl10 = Vinyl.new(
    album_title: "Timeless",
    genre: "Afrobeats",
    artist: "Davido",
    release_year: Faker::Date.between(from: 2.days.ago, to: Date.today),
    length: (45..95).to_a.sample,
    songs: "Over Dem, Feel, In The Garden featuring Morravey, Godfather, Unavailable featuring Musa Keys, BOP featuring Dexta Daps, E Pain Me, Away, Precision, Kante featuring Fave, Na Money featuring The Cavemen and Angelique Kidjo, U (Juju) featuring Skepta, No Competition featuring Asake",
    pickup_adress: "Paris",
    price: (5..10).to_a.sample,
    user_id: User.all.sample.id
)
file = File.open("app/assets/images/covers/timeless.png")
  vinyl10.cover_image.attach(io: file, filename: "timeless.png", content_type: "image/png")
  vinyl10.save

  vinyl11 = Vinyl.new(
    album_title: "Kind of Blue",
    genre: "Jazz",
    artist: "Miles Davis",
    release_year: Faker::Date.between(from: 2.days.ago, to: Date.today),
    length: (45..95).to_a.sample,
    songs: "So What, Freddie Freeloader, Blue in Green, All Blues, Flamenco Sketches",
    pickup_adress: "London",
    price: (5..10).to_a.sample,
    user_id: User.all.sample.id
)
file = File.open("app/assets/images/covers/blue.png")
  vinyl11.cover_image.attach(io: file, filename: "blue.png", content_type: "image/png")
  vinyl11.save

  vinyl12 = Vinyl.new(
    album_title: "Exodus",
    genre: "Reggae",
    artist: "Bob Marley",
    release_year: Faker::Date.between(from: 2.days.ago, to: Date.today),
    length: (45..95).to_a.sample,
    songs: "Is This Love, No Woman No Cry, Could You Be Loved, Three Little Birds, Buffalo Soldier, Get Up Stand Up, Stir It Up, I Shot the Sheriff, Waiting in vain, Redemption, Satisfy my soul, Exodus, Jamming",
    pickup_adress: "Paris",
    price: (5..10).to_a.sample,
    user_id: User.all.sample.id
)
file = File.open("app/assets/images/covers/exodus.png")
  vinyl12.cover_image.attach(io: file, filename: "exodus.png", content_type: "image/png")
  vinyl12.save

  vinyl13 = Vinyl.new(
    album_title: "Rust in Peace",
    genre: "Metal",
    artist: "Megadeth",
    release_year: Faker::Date.between(from: 2.days.ago, to: Date.today),
    length: (45..95).to_a.sample,
    songs: "Holy Wars... The Punishment Due, Hangar 18, Take No Prisoners, Five Magics, Poison Was The Cure, Lucretia, Tornado Of Souls, Dawn Patrol, Rust In Peace... Polaris",
    pickup_adress: "London",
    price: (5..10).to_a.sample,
    user_id: User.all.sample.id
)
file = File.open("app/assets/images/covers/rust.png")
  vinyl13.cover_image.attach(io: file, filename: "rust.png", content_type: "image/png")
  vinyl13.save

  vinyl14 = Vinyl.new(
    album_title: "Post",
    genre: "Electronic",
    artist: "Bjork",
    release_year: Faker::Date.between(from: 2.days.ago, to: Date.today),
    length: (45..95).to_a.sample,
    songs: "Army Of Me, Hyper-Ballad, The Modern Things, It's Oh So Quiet, Enjoy, You've Been Flirting Again, Isobe, Possibly Maybe, Miss You, Cover Me" ,
    pickup_adress: "London",
    price: (5..10).to_a.sample,
    user_id: User.all.sample.id
)
file = File.open("app/assets/images/covers/post.png")
  vinyl14.cover_image.attach(io: file, filename: "post.png", content_type: "image/png")
  vinyl14.save
