# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

puts "CLEANING DATABASE"
Booking.destroy_all
Boat.destroy_all
User.destroy_all

puts "CREATING DATA"

user_1 = User.create!(
  email: "micah@email.com",
  password: "password",
  password_confirmation: "password",
)

user_2 = User.create!(
  email: "lachy@email.com",
  password: "password",
  password_confirmation: "password",
)

user_3 = User.create!(
  email: "phil@email.com",
  password: "password",
  password_confirmation: "password",
)


boat_1 = Boat.create!(
  name: "Surly Sally",
  category: "Pontoon",
  description: "Just a trusty boat",
  price: 120,
  user_id: 1
)

boat_2 = Boat.create!(
  name: "Dragon Boat",
  category: "Battleship",
  description: "Khaleesi's favorite",
  price: 140,
  user_id: 1
)

boat_3 = Boat.create!(
  name: "Fast Boat",
  category: "Speedboat",
  description: "Like the Flash",
  price: 340,
  user_id: 2
)

boat_4 = Boat.create!(
  name: "Slow Boat",
  category: "Dingy",
  description: "Take your time and enjoy life.",
  price: 100,
  user_id: 2
)

boat_5 = Boat.create!(
  name: "THE Boat",
  category: "Jetboat",
  description: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. In, possimus quas at excepturi cum earum nisi ipsam similique totam omnis.",
  price: 200,
  user_id: 3
)

boat_6 = Boat.create!(
  name: "Boaty Boat",
  category: "Sailboat",
  description: "Lorem ipsum dolor sit amet consectetur, adipisicing elit. In, possimus quas at excepturi cum earum nisi ipsam similique totam omnis.",
  price: 190,
  user_id: 1
)

booking_1 = Booking.create!(
  start_date: Date.new(2022,2,3),
  end_date: Date.new(2022,3,1),
  status: "Pending",
  boat_id: 3,
  user_id: 1,
)

booking_2 = Booking.create!(
  start_date: Date.new(2022,3,1),
  end_date: Date.new(2022,3,3),
  status: "Pending",
  boat_id: 5,
  user_id: 1,
)

booking_3 = Booking.create!(
  start_date: Date.new(2022,3,12),
  end_date: Date.new(2022,3,23),
  status: "Pending",
  boat_id: 3,
  user_id: 3,
)

booking_4 = Booking.create!(
  start_date: Date.new(2022,3,13),
  end_date: Date.new(2022,3,15),
  status: "Pending",
  boat_id: 1,
  user_id: 2,
)

booking_5 = Booking.create!(
  start_date: Date.new(2022,3,1),
  end_date: Date.new(2022,3,16),
  status: "Pending",
  boat_id: 6,
  user_id: 3,
)

booking_6 = Booking.create!(
  start_date: Date.new(2022,3,1),
  end_date: Date.new(2022,3,3),
  status: "Pending",
  boat_id: 2,
  user_id: 2,
)

puts "SEED COMPLETE"
