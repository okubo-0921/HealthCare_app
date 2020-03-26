# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  [20200101, 'test', 50, 160],
  [20200102, 'test', 55, 165],
  [20200103, 'test', 60, 162],
  [20200104, 'AAA', 70, 155],
  [20200105, 'AAA', 65, 180],
  [20200106, 'AAA', 75, 175],
].each do |record|
  Chart.create!(
    date: record[0],
    name: record[1],
    weight: record[2],
    length: record[3],
    BMI: (record[2].to_f / ((record[3].to_f/100)**2)),
    Proper: (((record[3].to_f/100)**2) * 22),
  )
end

[
  ['a', 'aaaa', 'test', 20200301, 20200302],
  ['b', 'bbbb', 'test', 20200303, 20200305],
  ['c', 'cccc', 'AAA', 20200303, 20200305],
  ['d', 'dddd', 'AAA', 20200303, 20200305],
].each do |record|
  Calendar.create!(
    title: record[0],
    body: record[1],
    name: record[2],
    start_date: record[3],
    end_date: record[4],
  )
end