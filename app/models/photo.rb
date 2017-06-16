class Photo < ApplicationRecord
  belongs_to :place
  mount_uploader :picture, PictureUploader
  
  def create_photo
  end
end
