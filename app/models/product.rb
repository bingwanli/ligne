class Product < ApplicationRecord
  belongs_to :brand
  has_many :product_recs
  mount_uploader :image_url, ProductPhotoUploader
end
