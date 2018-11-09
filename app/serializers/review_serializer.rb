class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :book_id, :user_id, :title, :content, :rating
  belongs_to :book
end
