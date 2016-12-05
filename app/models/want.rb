class Want < ApplicationRecord
  belongs_to :user
  belongs_to :category
  validates :title, presence: true
end
