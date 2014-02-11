# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.delete_all
Song.delete_all


Artist.create(name: "Black Sabbath", genre: "Metal", photo_url:"http://www.glidemagazine.com/glide/wp-content/uploads/legacy/blacksabbath.jpg")

Song.create(title: "Paranoid", year: 1971, artist_id: 3)
Song.create(title: "Iron Man", year: 1971, artist_id: 3)
Song.create(title: "Planet Caravan", year: 1971, artist_id: 3)
