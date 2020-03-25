# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  [2020, 'a', 50, 160, nil],
  [2020, 'b', 55, 165, nil],
  [2020, 'c', 60, 170, nil],
  [2020, 'd', 65, 175, nil],
  [2020, 'e', 70, 180, nil],
  [2020, 'f', 75, 185, nil],
  [2020, 'g', nil, 48, nil],
  [2020, 'h', nil, 48, nil],
].each do |record|
  Chart.create(
    date: Time.zone.local(record[0]),
    name: record[1],
    weight: record[2],
    length: record[3],
    BMI: record[4]
  )
end