class Product < ApplicationRecord
  belongs_to :brand
  mount_uploader :image_url, ProductPhotoUploader
end
