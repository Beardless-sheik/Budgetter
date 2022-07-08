# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.new(
  :Name                  => "Alick Nyirenda",
  :email                 => "test@email.com",
  :password              => "123Alick",
  :password_confirmation => "123Alick"
)
user.save!

category1 = Category.create(Name: "Food", Icon: "https://img.icons8.com/material-outlined/96/1A1A1A/no-image.png",
  user: user)
category2 = Category.create(Name: "Drinks", Icon: "https://img.icons8.com/material-outlined/96/1A1A1A/no-image.png",
  user: user)
category3 = Category.create(Name: "Fuel", Icon: "https://img.icons8.com/material-outlined/96/1A1A1A/no-image.png",
  user: user)

payment1_category1 = Payment.create(Name: "Mc Donalds", Amount: 33.54 , user: user, category: category1)
payment1_category2 = Payment.create(Name: "Mosi", Amount: 56.75 , user: user, category: category2)
payment1_category3 = Payment.create(Name: "Puma Filling Station", Amount: 150 , user: user, category: category3)

