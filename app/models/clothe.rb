class Clothe < ApplicationRecord
  belongs_to :user
  validates :title, :category, :description, :price, presence: true
end
