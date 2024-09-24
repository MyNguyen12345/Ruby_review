class Customer < ApplicationRecord
  has_many :orders
  has_many :reviews
  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true
end
