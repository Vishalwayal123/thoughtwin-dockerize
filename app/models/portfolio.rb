class Portfolio < ApplicationRecord
  validates :image, :title, :description, :language, :web_type, presence: true
  mount_uploader :image, AvatarUploader
end
