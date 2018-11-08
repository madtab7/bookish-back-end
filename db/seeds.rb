# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([
  {
    username: "madtab",
    password: "maddy",
    full_name: "Maddy Tabing",
    avatarURL: "https://pbs.twimg.com/profile_images/650699836317011968/XZcRMc7u_400x400.jpg"
  },
  {
    username: "alinder",
    password: "alinder",
    full_name: "Andrew Linder",
    avatarURL: "https://ca.slack-edge.com/T02MD9XTF-UC1KP4E20-c6161b63538f-72"
  },
  {
    username: "fbenton",
    password: "fbenton",
    full_name: "Forrest Benton",
    avatarURL: "https://ca.slack-edge.com/T02MD9XTF-UC2J6TJ94-148db1d64a63-48"
  }
  ])
