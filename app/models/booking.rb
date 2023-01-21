class Booking < ApplicationRecord
  belongs_to :clothe
  belongs_to :user
  validates :date, :user, presence: true
  validates :status, inclusion: { in: [ true, false ] }
end
