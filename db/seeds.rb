# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

users = User.create([
  {
    username: "madtab",
    password: "maddy",
    full_name: "Maddy Tabing",
    avatarURL: "https://pbs.twimg.com/profile_images/650699836317011968/XZcRMc7u_400x400.jpg"
  },
  {
    username: "alindner",
    password: "alindner",
    full_name: "Andrew Lindner",
    avatarURL: "https://ca.slack-edge.com/T02MD9XTF-UC1KP4E20-c6161b63538f-72"
  },
  {
    username: "fbenton",
    password: "fbenton",
    full_name: "Forrest Benton",
    avatarURL: "https://ca.slack-edge.com/T02MD9XTF-UC2J6TJ94-148db1d64a63-48"
  },
  {
    username: "nrobin",
    password:"nrobin",
    full_name: "Nick Robin",
    avatarURL: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/25442862_10155891423716192_7094111462824756063_n.jpg?_nc_cat=106&_nc_ht=scontent-iad3-1.xx&oh=56ea86b124135da57a6509bbd2913ed6&oe=5CAD382F"
  },
  {
    username: "atabing",
    password:"atabing",
    full_name: "Alex Tabing",
    avatarURL: "https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/13769341_10210584608115526_8499678271178868233_n.jpg?_nc_cat=108&_nc_ht=scontent-iad3-1.xx&oh=f3ed310e99070bd05684a6c0e25073fd&oe=5CB03BF5"
  }
  ])
