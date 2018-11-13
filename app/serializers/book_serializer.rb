class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :description, :imgURL
  has_many :reviews
  has_many :shelved_books
end
