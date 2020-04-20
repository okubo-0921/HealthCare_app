# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  [20200101, 'test', 70, 170],
  [20200102, 'test', 78, 171],
  [20200103, 'test', 72, 175],
  [20200104, 'test', 70, 172],
  [20200105, 'test', 80, 170],
  [20200101, 'AAA', 60, 160],
  [20200102, 'AAA', 65, 165],
  [20200103, 'AAA', 64, 162],
  [20200104, 'AAA', 62, 160],
  [20200105, 'AAA', 66, 163],
].each do |record|
  Chart.create!(
    date: record[0],
    name: record[1],
    weight: record[2],
    length: record[3],
    BMI: (record[2].to_f / ((record[3].to_f/100)**2)),
    Proper: (((record[3].to_f/100)**2) * 25),
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
  [5, 'うどん', 300],
  [6, 'ステーキ', 500],
  [7, 'チョコレート', 400],
  [8, 'みそ汁', 50],
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