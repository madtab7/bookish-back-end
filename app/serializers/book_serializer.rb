class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :description, :imgURL
  has_many :reviews
end
