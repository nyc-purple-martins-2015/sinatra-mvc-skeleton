require "faker"

rachel = User.create!(name: "rachel", password: "password", email: "rachel@dbc.com")
lawson = User.create!(name: "lawson", password: "password", email: "lawson@dbc.com")

bikes = Category.create!(title: "Bicycles")
cars = Category.create!(title: "Cars")
books = Category.create!(title: "Books")

15.times do
  Item.create!(
  title: Faker::Book.title,
  description: Faker::Lorem.paragraph,
  category_id: rand(1..3),
  user_id: rand(1..2),
  price: rand(100.00..1000.00).round(2)
    )
end
