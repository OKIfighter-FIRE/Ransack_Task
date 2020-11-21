# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"
require "faker"
Faker::Config.locale = :ja

User.create!(name:'金城', age:28)
User.create!(name:'秀市朗', age:30)
User.create!(name:'kinjo', age:29)
User.create!(name:'Ashu', age:2)
User.create!(name:'KONA', age:0)
User.create!(name:'Okinawa', age:100)
User.create!(name:'Uchinnchu', age:11)
User.create!(name:'FIREMEN', age:911)

1000.times do
  User.create!(name: Faker::Nmae.name, age: rand(0..100))
end

puts "初期データの投入に成功しました！"
