# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#User.delete_ail
ActiveRecord::Base.connection.execute 'truncate table users'
User.create!(name:  "茶余饭后",
             email: "wuwei215a@126.com",
             admin: true,
             password:              "123456",
             password_confirmation: "123456",
             activated: true,
             activated_at: Time.now)
User.create!( id: 2,
             name:  "任大臭屁",
             email: "rencai@126.com",
             admin: true,
             password:              "123456",
             password_confirmation: "123456",
             activated: true,
             activated_at: Time.now)
99.times do |n|
  name  = Faker::Name.name
  email = "wuwei-#{n+1}@126.com"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.now)
end
