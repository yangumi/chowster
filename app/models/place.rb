class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photos

  geocoded_by :address
  after_validation :geocode

  validates :name, :address, :description, presence: true, length: { minimum: 3 }

  def user_email
    user.email if user && user.email
  end

  def human_rating
    comments.last.humanized_rating if comments.last.present? && comments.last.humanized_rating
  end

end
