class ShelvedBookSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :read, :want_to_read
  belongs_to :book
end
