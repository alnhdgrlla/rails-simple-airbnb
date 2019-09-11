class Booking < ApplicationRecord
  belongs_to :flat
  validates :start_date, presence: true
  validates :end_date, presence: true
end
