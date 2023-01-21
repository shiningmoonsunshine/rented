class Clothe < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :title, :category, :description, :price, presence: true
end
