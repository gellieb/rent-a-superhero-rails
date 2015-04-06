# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

angel = User.create(name: "Angel", email: "angel@gmail.com", password: "123")
man = Superhero.create(name: "Superman", bio: "Leaping from tall buildings. Kinda have a weak spot for brunettes. Absolutely hate green. EVERYTHING GREEN...")
