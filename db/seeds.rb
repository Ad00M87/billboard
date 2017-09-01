# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 40.times do
#   Artist.create(name: Faker::Name.name_with_middle,
#                 from: Faker::LordOfTheRings.location,
#                 music_genre: Faker::Music.instrument,
#                 age: Faker::Number.between(18, 100))
# end

# Artist.all.each do |artist|
#   Song.create(name: Faker::Beer.name,
#               artist_id: artist.id,
#               genre: Faker::Space.moon)
# end

10.times do
  BillboardChart.create(
    name: "Top 100 #{Faker::University.name}")
  end

Song.all.each do |song|
  BillboardChart.all.each do |chart|
    song.find(params[song]).billboard_chart_id = chart.find(params[chart])
