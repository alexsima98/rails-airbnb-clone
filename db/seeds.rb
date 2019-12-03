# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Couch.destroy_all
User.destroy_all
puts "starting seeds"

nick = User.create(email: "nick@gmail.com", password: "123456")
roy = User.create(email: "roy@gmail.com", password: "123456")
# 10.times do
Couch.create(title: 'couch1', address: 'Barcelona', price: 100, user: nick, remote_photo_url: "https://source.unsplash.com/random")
Couch.create(title: 'couch2',address: 'Leuven', price: 50, user: roy, remote_photo_url: "https://source.unsplash.com/random")
# use faker for title and address! instal gem, blablabla
puts "finishing seeding"
