class Flat < ApplicationRecord
  has_many :review, dependent: :destroy
  has_many :booking, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :number_of_guests, presence: true
  validates :price_per_night, presence: true
end
