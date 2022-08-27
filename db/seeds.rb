# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
if Rails.env.development?
   user = User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
   user.tickets.create(incident_number: "1", status: true, date_of_service: Date.today)
   user.tickets.create(incident_number: "2", status: true, date_of_service: Date.today + 2.days)
end