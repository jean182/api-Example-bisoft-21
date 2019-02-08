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

class AuthorSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :birth, :bio

  has_many :books
end
