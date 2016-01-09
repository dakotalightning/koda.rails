# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


##
# Default
#
User.create!({
  first_name: "Bob",
  last_name: "John",
  email: "bob@animikii.com",
  username: "bobjohn",
  password: "bobjohn",
  password_confirmation: "bobjohn"
})

User.create!({
  first_name: "Dakota",
  last_name: "Lightning",
  email: "dakota@animikii.com",
  username: "dakota",
  password: "dakota",
  password_confirmation: "dakota",
  is_admin: true
})
