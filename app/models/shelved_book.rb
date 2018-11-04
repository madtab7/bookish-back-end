class ShelvedBook < ApplicationRecord
  belongs_to :user
  belongs_to :book

  # def self.usersearch(user_id)
  #   ShelvedBook.set_headers
  #   get()
  # end

end
