# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create(
  first_name: "Anne", 
  last_name: "Perez", 
  street_name: "Alte Str.", 
  street_number: "99", 
  zip: "20002", 
  city: "Berlin", 
  customer_number: "2020-A-567", 
  email: "user@gmail.com")

puts "Users in the DB: ", User.count