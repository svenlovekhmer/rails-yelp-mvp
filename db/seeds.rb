require "faker"

CATEGORY = [ "chinese", "italian", "japanese", "french", "belgian" ]

Restaurant.destroy_all
5.times do
  restaurant = Restaurant.create!(name: Faker::Creature::Animal.name, address: Faker::Address.street_address + Faker::Address.country, category: CATEGORY.sample, phone_number: Faker::PhoneNumber.cell_phone)
  3.times do
    Review.create!(content: Faker::ChuckNorris.fact, rating: [ 1, 2, 3, 4, 5 ].sample, restaurant_id: restaurant.id)
  end
end
