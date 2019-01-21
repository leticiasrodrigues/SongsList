FactoryBot.define do
  factory :album do
    year { Faker::Number.between(1950, 2018) }
    name { Faker::Name.name }
  end
end
