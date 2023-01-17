class Clothe < ApplicationRecord
  belongs_to :booking
  belongs_to :user
  validates :category, :description, :price, :user, :booking, presence: true
end
