FactoryBot.define do
  factory :song do
    name { Faker::Name.name }
    association :album, factory: :album 
  end
end
