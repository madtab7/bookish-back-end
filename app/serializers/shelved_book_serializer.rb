class ShelvedBookSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :read, :want_to_read, :recommended, :friend_id
  belongs_to :book
end
