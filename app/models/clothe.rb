class Clothe < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo
  validates :title, :category, :description, :price, :address, presence: true
end
