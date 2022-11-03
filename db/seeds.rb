require "json"
require "faker"


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User Table 
# user = User.create!(email: "mathieu.houde@codeboxx.biz", password: "Mathieu321!")
# employee = Employee.create!(
#     first_name: 'Mathieu',
#     last_name: 'Houde',
#     title: 'Gopher',
#     email: 'mathieu.houde@codeboxx.biz',
#     user: user
# )

# user = User.create!(email: "patrick.thibault@codeboxx.biz", password: "Patrick321!")
# employee = Employee.create!(
#     first_name: 'Patrick',
#     last_name: 'Thibault',
#     title: 'Maximalist',
#     email: 'patrick.thibault@codeboxx.biz',
#     user: user
# )

# user = User.create!(email: "francis.patry-jessop@codeboxx.biz", password: "Francis321!")
# employee = Employee.create!(
#     first_name: 'Francis',
#     last_name: 'Patry-Jessop',
#     title: 'Captain',
#     email: 'francis.patry-jessop@codeboxx.biz',
#     user: user
# )

# user = User.create!(email: "david.amyot@codeboxx.biz", password: "David321!")
# employee = Employee.create!(
#     first_name: 'David',
#     last_name: 'Amyot',
#     title: 'The Man',
#     email: 'david.amyot@codeboxx.biz',
#     user: user
# )

# user = User.create!(email: "marie-eve.goupil@codeboxx.biz", password: "Marie-eve321!")
# employee = Employee.create!(
#     first_name: 'Marie-Ève',
#     last_name: 'Goupil',
#     title: 'AI Master',
#     email: 'marie-eve.goupil@codeboxx.biz',
#     user: user
# )

# user = User.create!(email: "francois.boivin@codeboxx.biz", password: "Francois321!")
# employee = Employee.create!(
#     first_name: 'François',
#     last_name: 'Boivin',
#     title: 'The tank',
#     email: 'francois.boivin@codeboxx.biz',
#     user: user
# )

# user = User.create!(email: "timothy.wever@codeboxx.biz", password: "Timothy321!")
# employee = Employee.create!(
#     first_name: 'Timothy',
#     last_name: 'Wever',
#     title: 'Beard whisperer',
#     email: 'timothy.wever@codeboxx.biz',
#     user: user
# )

# user = User.create!(email: "kiril.kleinerman@codeboxx.biz", password: "Kiril321!")
# employee = Employee.create!(
#     first_name: 'Kiril',
#     last_name: 'Kleinerman',
#     title: 'I <3 Winnipeg',
#     email: 'kiril.kleinerman@codeboxx.biz',
#     user: user
# )

# user = User.create!(email: "felicia.hartono@codeboxx.biz", password: "Felicia321!")
# employee = Employee.create!(
#     first_name: 'Felicia',
#     last_name: 'Hartono',
#     title: 'Scrums are too early',
#     email: 'felicia.hartono@codeboxx.biz',
#     user: user
# )

# user = User.create!(email: "eileen.ai@codeboxx.biz", password: "Eileen321!")
# employee = Employee.create!(
#     first_name: 'Eilen',
#     last_name: 'Ai',
#     title: 'They really are.',
#     email: 'eileen.ai@codeboxx.biz',
#     user: user
# )

# # Address table  

file = File.open "address/addresses-us-1000.json"
data = JSON.load file 

puts "data: #{data}"
# address = Address.create!(
#     number_and_street:data['addresses'][1]['address1'],
#     suite_appartment:data['addresses'][1]['address2'],
#     city:data['addresses'][1]['city'],
#     postal_code:data['addresses'][1]['postalCode'],
#     country:"US"
    
# )
# puts address.city
# puts address.number_and_street
# puts address.suite_appartment
# puts address.postal_code
# puts address.country


#Faker
# 10.times do
#     addresses = Address.create!(
#         #address_type: ..,
#         #status: ..,
#         #entity: ..,
#         number_and_street: Faker::Address.street_address,
#         suite_appartment: Faker::Address.secondary_address,
#         city: Faker::Address.city,
#         postal_code: Faker::Address.zip_code,
#         country: "US",
#         #notes: ..,
#         #created_at: ..,
#         #updated_at: ..,
#     )
# end

<<<<<<< HEAD
15.times do
    buildings = Building.create!(
            # customerID: ID,
            # buildingAddress
            adminFullName: Faker::FunnyName.name || Faker::Creature::Animal.name,
            # adminEmail
            # adminPhoneNumber
            # technicalContactFullName
            # technicalContactEmail
            # technicalContactPhoneNumber
    )
end
=======
# 5.times do
#     buildings = Building.create!(
#             customerID: ID,
#             # buildingAddress
#             adminFullName: Faker::FunnyName.name,
#             # adminEmail
#             # adminPhoneNumber
#             # technicalContactFullName
#             # technicalContactEmail
#             # technicalContactPhoneNumber
#     )
# end
>>>>>>> dev
