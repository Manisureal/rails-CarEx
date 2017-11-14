class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :booked_time, presence: true
end
