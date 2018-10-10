# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.create!([
  {
    name: "BugSmash",
    location: "Denver",
    price: 10.00,
    description: "A night of smashing the bugs",
    starts_at: 10.days.from_now
  },
  {
    name: "Hackathon",
    location: "Austin",
    price: 40.00,
    description: "Hunker down for a Hackathon Hoedown",
    starts_at: 21.days.from_now
  },
  {
    name: "Kata Camp",
    location: "Dallas",
    price: 75.00,
    description: "Grow your craft with katas",
    starts_at: 30.days.from_now
  }
])