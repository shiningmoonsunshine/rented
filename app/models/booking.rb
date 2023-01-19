class Booking < ApplicationRecord
  belongs_to :clothe
  belongs_to :user
  validates :date, :status, :user, presence: true
end
