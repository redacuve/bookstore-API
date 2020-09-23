FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    author { Faker::Book.author }
    percentage { 1 }
    category { create(:category) }
    user { create(:user) }
  end
end
