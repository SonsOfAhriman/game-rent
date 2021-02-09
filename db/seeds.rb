# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding..."

Booking.destroy_all

Game.destroy_all

User.destroy_all

ryan = User.new(username: "Ryan", email: "ryan@hello.org", password: "111111")
ryan.save
ade = User.new(username: "Ade", email: "ade@hello.org", password: "111111")
ade.save
lena = User.new(username: "Lena", email: "lena@hello.org", password: "111111")
lena.save
kristina = User.new(username: "Kristina", email: "kristina@hello.org", password: "111111")
kristina.save

crawl = Game.new(title: "Dungeon Crawl", description: "Hardest game on the planet", availability: true)

crawl.user = ryan
crawl.save

knockout = Game.new(title: "Knock Out", description: "Get them!", availability: true)
knockout.user = ade
knockout.save

battle_bots = Game.new(title: "Battle Bots", description: "Save the planet from the evil robots", availability: true)
battle_bots.user = lena
battle_bots.save

first = Booking.new(booking_start: "2021/02/25", booking_end: "2021/02/26", approved: true)
first.user = kristina
first.game = crawl
first.save

second = Booking.new(booking_start: "2021/03/15", booking_end: "2021/03/16", approved: true)
second.user = ryan
second.game = battle_bots
second.save

third = Booking.new(booking_start: "2021/04/15", booking_end: "2021/04/16", approved: false)
third.user = ade
third.game = knockout
third.save

puts "Seeding finished"
