class ShelvedBookSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :user_id, :read, :want_to_read
end
