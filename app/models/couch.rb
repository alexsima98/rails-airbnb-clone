class Couch < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :address, presence: true
  validates :price, presence: true
end
