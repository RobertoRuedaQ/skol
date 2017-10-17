require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'schools.csv'))
csv = CSV.parse(csv_text.scrub, headers: true, col_sep: ';')

csv.each do |row|
 t = School.new( state: row[0],city: row[1],school_name: row[2],address: row[3],gender: row[4], levels: row[5], school_hours: row[6],languages: row[7],owner: row[8],cycle: row[9],latitude: row[10],longitude: row[11])
  t.save
  puts " #{t.school_name} School saved"
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
