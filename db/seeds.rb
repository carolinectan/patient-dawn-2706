# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@comp1 = Competition.create!(name: 'Frisbeepalooza', location: 'Denver', sport: 'Frisbee Golf')

@team1 = @comp1.teams.create!(hometown: 'Santa Barbara', nickname: 'Baby Sharks')
@team2 = @comp1.teams.create!(hometown: 'Santa Barbara', nickname: 'Baby Sharks')
@team3 = @comp1.teams.create!(hometown: 'Santa Barbara', nickname: 'Baby Sharks')

@player1 = @team1.players.create!(name: 'Amanda', age: 34)
@player2 = @team1.players.create!(name: 'Carina', age: 33)

@player3 = @team2.players.create!(name: 'Ezze', age: 35)
@player4 = @team2.players.create!(name: 'Ozzie', age:36)

@player5 = @team3.players.create!(name: 'Jason', age: 40)
@player6 = @team3.players.create!(name: 'Jacob', age: 25)
