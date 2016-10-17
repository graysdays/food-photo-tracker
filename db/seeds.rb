require 'faker'

def random_meal
  %w(Breakfast Lunch Dinner Snack Dessert Drink).sample
end

100.times do
  entry = Entry.new({
    name: Faker::Space.nebula,
    description: Faker::Lorem.sentence,
    time: Faker::Time.between(200.days.ago, Date.today, :all),
    location: Faker::Address.street_address,
    category: random_meal
    })
  entry.save
end
