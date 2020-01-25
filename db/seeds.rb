# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

service = Service.create({name: "Confidence Buider's Club", price: 25, description: "Watch your dog fall in love with the world!", image_url: "../img/auribee.jpg", time: 25})
service = Service.create({name: "Neighborhood Explorers - Walk", price: 25, description: "Let's go for a walk and explore the neighborhood!", image_url: "https://s3-media3.fl.yelpcdn.com/bphoto/dC72hXi77NGGoylZ1IJ-hA/ls.jpg", time: 25})
service = Service.create({name: "In-Home Enrichment", price: 25, description: "Creative play, interactive games, and brain teasers for your busy bee!", image_url: "https://www.rover.com/blog/wp-content/uploads/2018/01/516WZLHgyTL.jpg", time: 25})
service = Service.create({name: "Nature Lovers - Hiking", price: 40, description: "Give your pup an enriching, exciting adventure!", image_url: "../img/hiking.jpg", time: 2})
