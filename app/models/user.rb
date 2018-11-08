class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: {case_sensitive: false}
  has_many :books, through: :shelved_books

  has_many :friendships
  has_many :friends, through: :friendships
  has_many :inverse_friendships, class_name: "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, through: :inverse_friendships, :source => :user

  # has_many :friendships
  #
  # has_many :friender_friendships, class_name: "Friendship", foreign_key: "friender_id"
  # has_many :friendee_friendships, class_name: "Friendship", foreign_key: "friendee_id"
  #
  # has_many :friendees, through: :friendee_friendships, class_name: "User", foreign_key: "friendee_id"
  # has_many :frienders, through: :friender_friendships, class_name: "User", foreign_key: "friender_id"


end
