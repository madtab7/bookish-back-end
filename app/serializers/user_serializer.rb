class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :full_name, :avatarURL
  # has_many :books, through: :shelved_books
end
