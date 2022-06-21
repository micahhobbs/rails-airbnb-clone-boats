# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "CLEANING DATABASE"
Booking.destroy_all
Boat.destroy_all
User.destroy_all

puts "CREATING DATA"

user_1 = User.create!(
  email: "user1@email.com",
  password: "testuser1",
  password_confirmation: "testuser1"
)

user_2 = User.create!(
  email: "user2@email.com",
  password: "testuser2",
  password_confirmation: "testuser2"
)

user_3 = User.create!(
  email: "user3@email.com",
  password: "testuser3",
  password_confirmation: "testuser3"
)

user_4 = User.create!(
  email: "user4@email.com",
  password: "testuser4",
  password_confirmation: "testuser4"
)

user_5 = User.create!(
  email: "user5@email.com",
  password: "testuser5",
  password_confirmation: "testuser5"
)

boat_1 = Boat.create!(
  name: "Surly Sally",
  category: "Pontoon",
  description: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. In, possimus quas at excepturi cum earum nisi ipsam similique totam omnis.",
  price: 120,
  user: user_1
)

boat_2 = Boat.create!(
  name: "Dragon Boat",
  category: "Battleship",
  description: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. In, possimus quas at excepturi cum earum nisi ipsam similique totam omnis.",
  price: 140,
  user: user_2
)

boat_3 = Boat.create!(
  name: "Fast Boat",
  category: "Speedboat",
  description: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. In, possimus quas at excepturi cum earum nisi ipsam similique totam omnis.",
  price: 340,
  user: user_3
)

boat_4 = Boat.create!(
  name: "Slow Boat",
  category: "Dingy",
  description: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. In, possimus quas at excepturi cum earum nisi ipsam similique totam omnis.",
  price: 100,
  user: user_4
)

boat_5 = Boat.create!(
  name: "THE Boat",
  category: "Jetboat",
  description: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. In, possimus quas at excepturi cum earum nisi ipsam similique totam omnis.",
  price: 200,
  user: user_5
)

boat_6 = Boat.create!(
  name: "Boaty Boat",
  category: "Sailboat",
  description: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. In, possimus quas at excepturi cum earum nisi ipsam similique totam omnis.",
  price: 190,
  user: user_5
)


puts "SEED COMPLETE"
