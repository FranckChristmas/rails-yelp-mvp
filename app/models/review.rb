class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: :true
  validates :rating, inclusion: { in: 0..5 }, numericality: { only_integer: true, message: "the rating is between 1 to 5" }
end
