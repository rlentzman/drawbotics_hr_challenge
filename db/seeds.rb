# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Position.destroy_all


# user1 = User.create!(name: "Stan", email: "stan@gmail.com", password: "123456")

position1 = Position.create!(title: "Ruby developer", company: "AirTNT")
position2 = Position.create!(title: "React developer", company: "Alfred")

