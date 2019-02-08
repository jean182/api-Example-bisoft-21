class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :plot, :release_date
  has_one :author
end
