# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

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

file = URI.open('https://images.yaoota.com/ENEQfv7DWCYoOmlYDsVqdinB--M=/trim/yaootaweb-production-ng/media/crawledproductimages/8f9fb577200b18566065b5722274b14daf5cb00f.jpg')

crawl = Game.new(title: "Dungeon Crawl", description: "Hardest game on the planet", availability: true, address: "Seoul, Hongdae")

crawl.user = ryan

crawl.photo.attach(io: file, filename: 'game', content_type: 'image/jpeg')

crawl.save

file_two = URI.open('https://images.yaoota.com/ENEQfv7DWCYoOmlYDsVqdinB--M=/trim/yaootaweb-production-ng/media/crawledproductimages/8f9fb577200b18566065b5722274b14daf5cb00f.jpg')


knockout = Game.new(title: "Knock Out", description: "Get them!", availability: true, address: "Seoul, City Hall")
knockout.user = ade

knockout.photo.attach(io: file_two, filename: 'game', content_type: 'image/jpeg')

knockout.save


file_three = URI.open('https://images.yaoota.com/ENEQfv7DWCYoOmlYDsVqdinB--M=/trim/yaootaweb-production-ng/media/crawledproductimages/8f9fb577200b18566065b5722274b14daf5cb00f.jpg')


battle_bots = Game.new(title: "Battle Bots", description: "Save the planet from the evil robots", availability: true, address: "Seoul, Itaewon")
battle_bots.user = lena

battle_bots.photo.attach(io: file_three, filename: 'game', content_type: 'image/jpeg')

battle_bots.save

file_four = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613784577/supermario_v82fry.jpg')

super_mario = Game.new(title: "Super Mario", description: "classic games", availability: true, address: "Seoul")
super_mario.user = lena
super_mario.photo.attach(io: file_four, filename: 'game', content_type: 'image/jpg')

super_mario.save

file_four2 = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613474356/2_3_gluvh3.jpg')

super_mario2 = Game.new(title: "Super Mario 2", description: "newest super mario", availability: true, address: "Seoul")
super_mario2.user = lena
super_mario2.photo.attach(io: file_four2, filename: 'game', content_type: 'image/jpg')

super_mario2.save


file_five = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613786760/minecraft-game_k4al6z.jpg')

minecraft = Game.new(title: "minecraft", description: "most favorite game in the world", availability: true, address: "Seoul")
minecraft.user = ade
minecraft.photo.attach(io: file_five, filename: 'game', content_type: 'image/jpg')

minecraft.save


file_six = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613797675/sniper_gwjjox.jpg')

countersniper = Game.new(title: "Counter Sniper", description: "feel the real battle", availability: true, address: "Seoul")
countersniper.user = kristina
countersniper.photo.attach(io: file_six, filename: 'game', content_type: 'image/jpg')

countersniper.save

file_seven = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613787959/wow_qpqsku.jpg')

wow = Game.new(title: "Word of Warcraft", description: "the most loved games by 30s", availability: true, address: "Seoul")
wow.user = ryan
wow.photo.attach(io: file_seven, filename: 'game', content_type: 'image/jpg')

wow.save

file_eight = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613788325/skyrim_h8kbzz.jpg')

skyrim = Game.new(title: "Skyrim", description: "You will enjoy the game if you like dragons", availability: true, address: "City hall, Seoul")
skyrim.user = lena
skyrim.photo.attach(io: file_eight, filename: 'game', content_type: 'image/jpg')

skyrim.save


file_nine = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613792458/baseball_fispd4.jpg')

baseball = Game.new(title: "baseball", description: "Enjoy virtual baseball games", availability: true, address: "Hongdae, Seoul")
baseball.user = lena
baseball.photo.attach(io: file_nine, filename: 'game', content_type: 'image/jpg')

baseball.save

file_ten = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613791459/basketball-ball_wp4xwa.png')

basketball = Game.new(title: "basketball", description: "Baseketball games in real", availability: true, address: "Itaewon, Seoul")
basketball.user = ade
basketball.photo.attach(io: file_ten, filename: 'game', content_type: 'image/png')

basketball.save

file_eleven = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613791459/game-console_znmi3b.png')

pacman = Game.new(title: "Pacman", description: "Old gen games but great for you", availability: true, address: "Gangnam, Seoul")
pacman.user = ryan
pacman.photo.attach(io: file_eleven, filename: 'game', content_type: 'image/png')

pacman.save


file_twelve = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613791459/football-player_yuract.png')

football = Game.new(title: "football", description: "Do you want to try football from  home", availability: true, address: "Pangyo")
football.user = lena
football.photo.attach(io: file_twelve, filename: 'game', content_type: 'image/png')

football.save

file_thirteen = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613791459/emerald_zd2vu6.png')

hitman = Game.new(title: "Hitman", description: "Enjoy virtual baseball games", availability: true, address: "Mapo, Seoul")
hitman.user = kristina
hitman.photo.attach(io: file_thirteen, filename: 'game', content_type: 'image/png')

hitman.save


file_fourteen = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613794166/picachu_ycndzb.jpg')

picachu = Game.new(title: "Picachu", description: "Do you remember picachu? You can play with picachu online ", availability: true, address: "Itaewon, Seoul")
picachu.user = ade
picachu.photo.attach(io: file_fourteen, filename: 'game', content_type: 'image/jpg')

picachu.save


file_fifteen = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613794166/animalcrossing_ygd5s0.jpg')

animal_crossing = Game.new(title: "Animal crossing", description: "Building your market and get rich", availability: true, address: "Gangnam, Seoul")
animal_crossing.user = lena
animal_crossing.photo.attach(io: file_fifteen, filename: 'game', content_type: 'image/jpg')

animal_crossing.save


file_sixteen = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613794706/little_prince_vyqihi.jpg')

little_prince = Game.new(title: "Little Prince", description: "Game with storytelling", availability: true, address: "")
little_prince.user = kristina
little_prince.photo.attach(io: file_sixteen, filename: 'game', content_type: 'image/jpg')

little_prince.save


file_seventeen = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613794166/surfing_wbn4mw.jpg')

surfing = Game.new(title: "Surf to ride on wave", description: "surf and ride on the wave", availability: true, address: "Seoul")
surfing.user = ryan
surfing.photo.attach(io: file_seventeen, filename: 'game', content_type: 'image/jpg')

surfing.save


file_eigteen = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613794166/tetris_dydggk.jpg')

tetris = Game.new(title: "Tetris", description: "Everyone's favorite!", availability: true, address: "Seoul")
tetris.user = ryan
tetris.photo.attach(io: file_eigteen, filename: 'game', content_type: 'image/jpg')

tetris.save


file_ninteen = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613794166/cartrider_htnxvx.jpg')

cart_rider = Game.new(title: "Cart Rider", description: "Speed game to release your stress away", availability: true, address: "Itaewon")
cart_rider.user = ade
cart_rider.photo.attach(io: file_ninteen, filename: 'game', content_type: 'image/jpg')

cart_rider.save

file_twenty = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613795885/sims_ziuh8f.jpg')

sims = Game.new(title: "Sims", description: "Make your own sity and be the mayor", availability: true, address: "Seoul")
sims.user = lena
sims.photo.attach(io: file_twenty, filename: 'game', content_type: 'image/jpg')

sims.save

file_twenty1 = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613795884/fishdom_o0hedh.jpg')

fishdom = Game.new(title: "Fishdom", description: "The game you can't turn off", availability: true, address: "Seoul")
fishdom.user = lena
fishdom.photo.attach(io: file_twenty1, filename: 'game', content_type: 'image/jpg')

fishdom.save

file_twenty2 = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613795884/simpson_uhvja7.jpg')

simpson = Game.new(title: "Simpson family", description: "Your favorite character is here", availability: true, address: "Seoul")
simpson.user = lena
simpson.photo.attach(io: file_twenty2, filename: 'game', content_type: 'image/jpg')

simpson.save


file_twenty3 = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613795884/dancing_adq7b7.jpg')

dancing = Game.new(title: "Dancing with me", description: "Dancing for fun", availability: true, address: "Seoul")
dancing.user = lena
dancing.photo.attach(io: file_twenty3, filename: 'game', content_type: 'image/jpg')

dancing.save


file_twenty4 = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613795884/hayday_vklvnr.jpg')

hayday = Game.new(title: "Hayday", description: "Build your own farm", availability: true, address: "Seoul")
hayday.user = lena
hayday.photo.attach(io: file_twenty4, filename: 'game', content_type: 'image/jpg')

hayday.save

file_twenty5 = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613796715/inception_tpjcza.jpg')

inception = Game.new(title: "Inception", description: "Movie becomes reality", availability: true, address: "Seoul")
inception.user = kristina
inception.photo.attach(io: file_twenty5, filename: 'game', content_type: 'image/jpg')

inception.save

file_twenty6 = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613796715/coffee_i3qota.jpg')

coffee = Game.new(title: "Becoming Baristar", description: "Becoming baristar", availability: true, address: "Seoul")
coffee.user = ade
coffee.photo.attach(io: file_twenty6, filename: 'game', content_type: 'image/jpg')

coffee.save

file_twenty7 = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613796715/car_zejrk3.jpg')

car = Game.new(title: "Car racing", description: "You can race online with unlimit spped", availability: true, address: "Seoul")
car.user = ade
car.photo.attach(io: file_twenty7, filename: 'game', content_type: 'image/jpg')

car.save

file_twenty8 = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613796715/ryan_z9wb1d.jpg')

kakao = Game.new(title: "Kakao games with ryan", description: "Play with Ryan", availability: true, address: "Seoul")
kakao.user = ryan
kakao.photo.attach(io: file_twenty8, filename: 'game', content_type: 'image/jpg')

kakao.save

file_twenty9 = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613474356/2_4_x2ghxi.jpg')

wall2 = Game.new(title: "Wall-E", description: "Travel to the future", availability: true, address: "Seoul")
wall2.user = ade
wall2.photo.attach(io: file_twenty9, filename: 'game', content_type: 'image/jpg')

wall2.save

file_thirty = URI.open('https://res.cloudinary.com/dsgl1xjqn/image/upload/v1613472432/2_adpne2.png')

train = Game.new(title: "Train", description: "Easy and interesting", availability: true, address: "Seoul")
train.user = ryan
train.photo.attach(io: file_thirty, filename: 'game', content_type: 'image/jpg')

train.save


first = Booking.new(booking_start: "2021/02/25", booking_end: "2021/02/26", approved: true)
first.user = kristina
first.game = crawl
first.save


puts "Seeding finished"
