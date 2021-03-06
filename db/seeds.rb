# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
30.times do
  title = Faker::Movie.title
  overview = Faker::TvShows::RuPaul.quote
  poster_url = "https://www.#{Faker::Games::WarhammerFantasy.location}.com"
  rating = (rand(1.0..10.0)).round(1)

  Movie.create(title: title, overview: overview, poster_url: poster_url, rating: rating)
end
