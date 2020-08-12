# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "italian", phone_number: 555777888 }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "chinese", phone_number: 444777333 }
bazzar =  { name: "Bazzar", address: "Weteringkade 3 21515 AM, Rotterdam", category: "french", phone_number: 111222555 }
bodega =  { name: "La Bodega", address: "Brislaan 123 High AT, Amsterdam", category: "belgian", phone_number: 444999666 }
cubanita =  { name: "Cubanita", address: "89 Boulavard HG, Barcelona", category: "japanese", phone_number: 455214554 }

[ dishoom, pizza_east, bazzar, bodega, cubanita ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
