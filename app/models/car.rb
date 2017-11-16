class Car < ApplicationRecord
  belongs_to :user
  has_many :reviews, dependent: :destroy
  has_many :bookings
  validates :make, :model, :seats, :engine_size, :transmission, :color, presence: true
  # validates :reg_year, :fuel_type, :interior, :description, :price, presence: true
  mount_uploader :photo, PhotoUploader
end
