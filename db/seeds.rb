# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
20.times do |n|
  name = "#{Faker::Hacker.adjective} #{Faker::Hacker.abbreviation} #{Faker::Hacker.noun}"
  @project = Project.create!(name: name)
  5.times do |i|
    @vote = @project.votes.create!()
    @vote.user = User.create!(username: Faker::Internet.user_name)
    @vote.save
  end
end

