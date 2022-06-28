# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'
require 'open-uri'

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

boat_1_file = URI.open('https://res.cloudinary.com/dqgtdc8id/image/upload/v1656405605/surly-sally_eq3iew.jpg')
boat_1 = Boat.create!(
  name: "Surly Sally",
  category: "Pontoon",
  description: "Once you see Surly Sally, you'll surely be blown away. This
  boat sails smoothly no matter the seas. Fitted with a classic 70's
  interior, working kitchen, a 2 double beds.",
  price: 120,
  user_id: 1,
)
boat_1.photo.attach(io: boat_1_file, filename: 'surly_sally.jpg', content_type: 'image/jpg')

boat_2_file = URI.open('https://res.cloudinary.com/dqgtdc8id/image/upload/v1656406682/dragon_boat_if46ya.jpg')
boat_2 = Boat.create!(
  name: "Dragons Boat",
  category: "Dragon Boat",
  description: "A dragon boat is a human-powered watercraft originating from
   China's southern Guangdong Province.
  These were made of teak, but in other parts of China, different kinds of
  wood are used. This particular Dragon Boat is made of paper and painted
  in a very realistic wood tone.",
  price: 140,
  user_id: 1
)
boat_2.photo.attach(io: boat_2_file, filename: 'dragon_boat.jpg', content_type: 'image/jpg')

boat_3_file = URI.open('https://res.cloudinary.com/dqgtdc8id/image/upload/v1656406754/speedboat_niuzux.jpg')
boat_3 = Boat.create!(
  name: "Speedy Boaty",
  category: "Speedboat",
  description: "I'm 90% sure this is the fastest boat known to man. This thing
  can really move. 7/10 people who hire this boat tell me that I should probably
  slow it down a little bit...",
  price: 340,
  user_id: 2
)
boat_3.photo.attach(io: boat_3_file, filename: 'speedboat.jpg', content_type: 'image/jpg')

boat_4_file = URI.open('https://res.cloudinary.com/dqgtdc8id/image/upload/v1656406965/dingy_mffjhh.jpg')
boat_4 = Boat.create!(
  name: "Slow Boat",
  category: "Dingy",
  description: "Take your time and enjoy life. This may not be the fastest boat
  but if you're keen on slowing down and taking your time, this is the boat for you.",
  price: 100,
  user_id: 2
)
boat_4.photo.attach(io: boat_4_file, filename: 'slowboat.jpg', content_type: 'image/jpg')

boat_5_file = URI.open('https://res.cloudinary.com/dqgtdc8id/image/upload/v1656407208/jetboat_kwfwoa.jpg')
boat_5 = Boat.create!(
  name: "THE Boat",
  category: "Jetboat",
  description: "If you've been hunting for THE boat, this is the one. This boat have everything
  including the kitchen sink. It goes faster than fast and sails smoothly across
  the water.",
  price: 200,
  user_id: 3
)
boat_5.photo.attach(io: boat_5_file, filename: 'theboat.jpg', content_type: 'image/jpg')


boat_6_file = URI.open('https://res.cloudinary.com/dqgtdc8id/image/upload/v1656407400/sailboat_myknba.jpg')
boat_6 = Boat.create!(
  name: "Boaty McBoat",
  category: "Sailboat",
  description: "This boat is something else. It sails on water, it catches the wind.
  There is nothing this boat can't do.",
  price: 190,
  user_id: 1
)
boat_6.photo.attach(io: boat_6_file, filename: 'sailboat.jpg', content_type: 'image/jpg')

boat_7_file = URI.open('https://res.cloudinary.com/dqgtdc8id/image/upload/v1656150586/hero-picture_d777nt.jpg')
boat_7 = Boat.create!(
  name: "HMAS Smooth",
  category: "Speedboat",
  description: "Once you see the HMAS Smooth, you'll surely be blown away. This
  boat sails smoothly no matter the seas. Fitted with a classic 70's
  interior, working kitchen, a 2 double beds.",
  price: 120,
  user_id: 1,
)
boat_7.photo.attach(io: boat_7_file, filename: 'smooth.jpg', content_type: 'image/jpg')

boat_8_file = URI.open('https://res.cloudinary.com/dqgtdc8id/image/upload/v1656406682/dragon_boat_if46ya.jpg')
boat_8 = Boat.create!(
  name: "Dragons Other Boat",
  category: "Dragon Boat",
  description: "A dragon boat is a human-powered watercraft originating from
   China's southern Guangdong Province.
  These were made of teak, but in other parts of China, different kinds of
  wood are used. This particular version is made of styrofoam and painted
  in a very realistic wood tone.",
  price: 140,
  user_id: 1
)
boat_8.photo.attach(io: boat_8_file, filename: 'dragons_boat.jpg', content_type: 'image/jpg')

boat_9_file = URI.open('https://res.cloudinary.com/dqgtdc8id/image/upload/v1656125754/shaah-shahidh-eG6C4nIvP0Y-unsplash_smml45.jpg')
boat_9 = Boat.create!(
  name: "The Fisher",
  category: "Fishing Boat",
  description: "If you're keen to go fishing, then this is the boat for
  you. Comfortable in size and with plenty of room to relax, this is
  the perfect boat for trips with friends.",
  price: 340,
  user_id: 2
)
boat_9.photo.attach(io: boat_9_file, filename: 'fisher.jpg', content_type: 'image/jpg')

boat_10_file = URI.open('https://res.cloudinary.com/dqgtdc8id/image/upload/v1656406965/dingy_mffjhh.jpg')
boat_10 = Boat.create!(
  name: "Slower Boat",
  category: "Dingy",
  description: "Take your time and enjoy life. This may not be the fastest boat
  but if you're keen on slowing down and taking your time, this is the boat for you.",
  price: 120,
  user_id: 2
)
boat_10.photo.attach(io: boat_10_file, filename: 'evenslowboat.jpg', content_type: 'image/jpg')

boat_11_file = URI.open('https://res.cloudinary.com/dqgtdc8id/image/upload/v1656407208/jetboat_kwfwoa.jpg')
boat_11 = Boat.create!(
  name: "The Jet Boat",
  category: "Jetboat",
  description: "If you've been hunting for THE boat, this is the one. This boat have everything
  including the kitchen sink. It goes faster than fast and sails smoothly across
  the water.",
  price: 200,
  user_id: 3
)
boat_11.photo.attach(io: boat_11_file, filename: 'thejetboat.jpg', content_type: 'image/jpg')


boat_12_file = URI.open('https://res.cloudinary.com/dqgtdc8id/image/upload/v1656407400/sailboat_myknba.jpg')
boat_12 = Boat.create!(
  name: "Boaty",
  category: "Sailboat",
  description: "This boat is something else. It sails on water, it catches the wind.
  There is nothing this boat can't do.",
  price: 200,
  user_id: 1
)
boat_12.photo.attach(io: boat_12_file, filename: 'sailingboat.jpg', content_type: 'image/jpg')

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
