# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
3.times do |d|
  hackday = Hackday.create(start: DateTime.now, end: DateTime.now + 1, name: "#{Faker::Hacker.ingverb} #{Faker::Hacker.ingverb} #{Faker::Hacker.ingverb}")
  10.times do |n|
    name = "#{Faker::Hacker.adjective} #{Faker::Hacker.abbreviation} #{Faker::Hacker.noun}"
    project = hackday.projects.create!(name: name)
    3.times do |i|
      vote = project.votes.create!(user: User.create!(username: Faker::Internet.user_name, password: Faker::Internet.password))
      vote.save
    end
  end
end
