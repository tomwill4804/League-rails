# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

  User.create(name: "Tom", email: "tom@dtssoftware.com", phone: "111-1111")
  User.create(name: "Joe", email: "joe@dtssoftware.com", phone: "111-1111")
  User.create(name: "Fred", email: "fred@dtssoftware.com", phone: "111-1111")
  User.create(name: "Sam", email: "sam@dtssoftware.com", phone: "111-1111")

  Team.where(name: "UNC").first_or_create
  Team.where(name: "State").first_or_create
  Team.where(name: "Duke").first_or_create
  Team.where(name: "Wake").first_or_create

  jtype = ["Text", "Grid", "Chart"]
  cclass = ["class1", "class2", "class3", "class4"]
  tag = ["tag1 tag2", "tag3", "tag4"]


  20.times do |x|
      pos = Position.create(ptype: "Player", officer: "None",
        team_id: rand(1..4), user_id: rand(1..4) )
  end

  20.times do |x|
      game = Game.create(date: "2016-10-10",
        location: "Some Place",
        home_team_id: rand(1..4), away_team_id: rand(1..4) )
  end