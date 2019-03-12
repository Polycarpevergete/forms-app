# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

8.times do |n|
    name = Faker::Space.unique.planet
    Planet.create!(name: name)
end

10.times do |n|
    Flight.create!(origin_id:       1+rand(9),
                   destination_id:  1+rand(9),
                   duration:     Faker::Space.distance_measurement)
end