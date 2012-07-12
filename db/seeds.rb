# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: 'Tyler', last_name: 'Mangan', email: 'mango@gmail.com', password: 'admin')

Week.create(year: '2012', start_date: '2012-05-09', end_date: '2012-10-09', week_num: 1)
Week.create(year: '2012', start_date: '2012-13-09', end_date: '2012-17-09', week_num: 2)
Week.create(year: '2012', start_date: '2012-20-09', end_date: '2012-24-09', week_num: 3)

Game.create(week_id: 1, away_team_id: 1, home_team_id: 2, date: "2012-05-09")
Game.create(week_id: 1, away_team_id: 3, home_team_id: 4, date: "2012-05-09")