class FriendshipSerializer < ActiveModel::Serializer
  attributes :user_id, :friend_id
  belongs_to :friend
  # belongs_to :user
end
