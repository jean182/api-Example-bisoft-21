# == Schema Information
#
# Table name: authors
#
#  id         :bigint(8)        not null, primary key
#  bio        :text
#  birth      :date
#  full_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :author do
    full_name { Faker::Book.author }
    birth { Faker::Date.birthday(18, 65) }
    bio { Faker::Lorem.paragraph(2) }

    trait :invalid_author do
      full_name { nil }
      birth { nil }
      bio { nil }
    end
  end
end
