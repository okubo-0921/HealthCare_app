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
  [20200104, 'test', 70, 155],
  [20200105, 'test', 65, 180],
  [20200106, 'test', 75, 175],
  [20200107, 'test', 50, 160],
  [20200108, 'test', 55, 165],
  [20200109, 'test', 60, 162],
  [20200110, 'test', 70, 155],
  [20200111, 'test', 65, 180],
  [20200112, 'test', 75, 175],
  [20200101, 'AAA', 50, 160],
  [20200102, 'AAA', 55, 165],
  [20200103, 'AAA', 60, 162],
  [20200104, 'AAA', 70, 155],
  [20200105, 'AAA', 65, 180],
  [20200106, 'AAA', 75, 175],
  [20200107, 'AAA', 50, 160],
  [20200108, 'AAA', 55, 165],
  [20200109, 'AAA', 60, 162],
  [20200110, 'AAA', 70, 155],
  [20200111, 'AAA', 65, 180],
  [20200112, 'AAA', 75, 175],
].each do |record|
  Chart.create!(
    date: record[0],
    name: record[1],
    weight: record[2],
    length: record[3],
    BMI: (record[2].to_f / ((record[3].to_f/100)**2)),
    Proper: (((record[3].to_f/100)**2) * 22),
    metabolism: (13.397*record[2])+(4.799*record[3])-(5.677*20)+88.362
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

[
  [1, 'ごはん', 200],
  [2, 'コーヒー', 80],
  [3, 'ぱん', 150],
  [4, '牛乳', 180],
].each do |record|
  Obj.create!(
    obj_id: record[0],
    obj: record[1],
    calorie: record[2],
  )
end

[
  ['test', 2000, 1],
  ['AAA', 4000, 2],
].each do |record|
  Calorie.create!(
    name: record[0],
    calorie: record[1],
    calorie_id: record[2],
  )
end