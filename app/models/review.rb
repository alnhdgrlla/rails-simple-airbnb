class Review < ApplicationRecord
  belongs_to :flat
  validates :content, presence: true, length: { minimum: 20 }
end
