class Review < ApplicationRecord
  belongs_to :customer
  belongs_to :book
  enum state: { not_reviewed: 0, published: 1, hidden: 2 }
  validates :rating, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 5 }
  validates :comment, presence: true, length: { maximum: 500 }
  validates :customer_id, presence: true
  validates :book_id, presence: true
end
