class Author < ApplicationRecord
  has_many :books, -> { order(year_published: :desc) }
  validates :name, presence: true, uniqueness: true

end
