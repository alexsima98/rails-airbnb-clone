class Couch < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, presence: true
  validates :address, presence: true
  validates :price, presence: true
  validates :picture, presence: true
end
