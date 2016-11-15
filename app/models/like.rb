class Like < ApplicationRecord
  belongs_to :want, counter_cache: :likes_count
  belongs_to :user
end
