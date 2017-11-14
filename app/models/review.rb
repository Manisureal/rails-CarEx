class Review < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :content, :ratings, presence: true
end
