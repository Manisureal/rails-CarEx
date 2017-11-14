class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :bookings
  has_many :reviews
  has_many :cars
  has_many :booked_cars, through: :bookings , source: :car
  validates :email, uniqueness: true, presence: true
  validates :encrypted_password, presence: true
end
