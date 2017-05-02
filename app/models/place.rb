class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode

  validates :name, :address, :description, presence: true, length: { minimum: 3 }
end
