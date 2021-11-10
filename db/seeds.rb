# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
# dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", stars: 2 }
# pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", stars: 3 }
dozo =  { name: "Dozo", address: "68 Old Brompton Rd, South Kensington, London SW7 3LQ", phone_number: "020 7225 0505", category: "Japanese" }
mamma = { name: "La Mia Mamma", address: "2 Hollywood Rd, London SW10 9HY", phone_number: "020 7352 8484", category: "italian"}
earth = { name: "The Good Earth", address: "233 Brompton Rd, London SW3 2EP", phone_number: "020 7584 3658", category: "chinese"}
poule = { name: "La Poule Au Pout", address: "231 Ebury St, London SW1W 8UT", phone_number: "020 7730 7763", category: "french"}
crepe = { name: "The Crepe Factory", address: "297 North End Rd, London W14 9NS", phone_number: "none hehe", categort: "belgian"}
# [chinese italian japanese french belgian]

[ dishoom, pizza_east ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"


    t.string "name"
    t.text "address"
    t.string "phone_number"
    t.string "category"
