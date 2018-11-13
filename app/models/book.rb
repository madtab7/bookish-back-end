class Book < ApplicationRecord
  has_many :users, through: :shelved_books
  has_many :reviews
  has_many :shelved_books
end
