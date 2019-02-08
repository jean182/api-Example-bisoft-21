FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    release_date { Faker::Date.birthday(18, 65) }
    plot { Faker::Lorem.paragraph(2) }
    author

    trait :invalid_book do
      title { nil }
      release_date { nil }
      plot { nil }
      author { nil }
    end
  end
end
