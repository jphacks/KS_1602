class Post < ApplicationRecord
  belongs_to :user
  has_many :likes

  def like_user(user)
    likes.find_by(user_id: user)
  end
end
