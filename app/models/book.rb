class Book < ApplicationRecord
  has_many :users, through: :shelved_books


end
