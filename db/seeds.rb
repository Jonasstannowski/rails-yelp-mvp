# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = ["chinese", "italian", "japanese", "french", "belgian"]
rating_array = (0..5).to_a
5.times do
  @restaurant = Restaurant.create(
    name: Faker::FunnyName.name,
    address: Faker::Address.street_address,
    phone_number: Faker::IDNumber.valid,
    category: categories.sample
  )
  5.times do
    Review.create(
      rating: rating_array.sample,
      content: Faker::Fantasy::Tolkien.poem,
      restaurant_id: @restaurant.id
    )
  end
end
