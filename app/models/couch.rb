class Couch < ApplicationRecord
  belongs_to :user

  validates :address, presence: true
  validates :price, presence: true
end
