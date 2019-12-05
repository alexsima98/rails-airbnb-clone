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
alex = User.create(email: "alex@gmail.com", password: "123456")
# 10.times do
couch = Couch.new(title: 'Corner Sofa', address: 'Leuven', price: 100, user: roy, remote_photo_url: "https://www.sofa-dreams.com/artikelbilder/nord-sofa-mit-streifen/concept/XXL/grau/xxl_wohnlandschaft_leder_grau_concept_beleuchtung_1.jpg", description: "This is the best couch!")
couch = Couch.new(title: 'Blue Velvet Tufted Sofa',address: 'Madrid', price: 50, user: roy, remote_photo_url: "https://cdn-images.article.com/products/SKU338D/2890x1500/image45880.jpg?w=2890", description: "This blue velvet sofa is royally sweet.")
couch = Couch.new(title: 'Titanic',address: 'Leuven', price: 50, user: alex, remote_photo_url: "https://www.coricraft.co.za/media/catalog/product/cache/1/image/920x460/9df78eab33525d08d6e5fb8d27136e95/T/i/Titanic2DV_a.png", description: "The Titanic range offers a broad, robust profile complete with wooden leg detail for a definitively modern look.")
couch = Couch.new(title: 'Malou',address: 'Barcelona', price: 50, user: nick, remote_photo_url: "https://images.unsplash.com/photo-1540991825428-5b54b09f7338?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1497&q=80", description: "Malou wanted a couch")
couch = Couch.new(title: 'Super Duper Wide Couch',address: 'Brussels', price: 50, user: roy, remote_photo_url: "https://i.pinimg.com/originals/b3/dc/38/b3dc3880875009d55010d32d5fd7def0.jpg", description: " This is an extra wide couch.you should rent it")
couch = Couch.new(title: 'Stand Alone Couch',address: 'Antwerp', price: 50, user: alex, remote_photo_url: "https://mueblesjbrinas.com/wp-content/uploads/2018/07/BELLUNO03-wht-8013-350x263.jpg", description: "This couch is the best couch for sitting by yourself!")
couch = Couch.new(title: 'L-Couch',address: 'Amsterdam', price: 50, user: nick, remote_photo_url: "http://hydropoweryes.co/wp-content/uploads/2019/09/best-sectional-couch-banner-sofa-sleeper-elegant-best-sectional-sofas-images-on-queen.jpg", description: "The L couch shaped like an L. Rent it.")
couch = Couch.new(title: 'Red Hot Chiller',address: 'Tokyo', price: 50, user: roy, remote_photo_url: "http://weatherwoman.co/wp-content/uploads/2019/05/leather-couch-recliner-set-sofas-couches-dining-table-simply-home-living-banner-1.jpg", description: "The ultimate couch for chilling on your days off.")
couch = Couch.new(title: 'Pink Couch',address: 'New York', price: 50, user: alex, remote_photo_url: "https://test.comfort-works.com/img/cmseditor/madison-lp/hero-banner/desktop/IKEA-Stockholm-2017-Sofa-Covers-Madison-Rose-Cotton-Blends-Couch-Slipcover-Featured-2.jpg", description: "The most beautiful couch on this site")
couch = Couch.new(title: 'Curvy Brown Couch ',address: 'Paris', price: 50, user: roy, remote_photo_url: "http://gameartist.info/wp-content/uploads/2019/03/ashley-leather-couches-black-sectional-furniture-black-leather-sectional-furniture-furniture-furniture-black-sectional-sofa-ashley-leather-sectional-banner-ashley-leather-couch-set.jpg", description: "Chill out. Grab a beer. Sink in.")
# use faker for title and address! instal gem, blablabla
puts "finishing seeding"
