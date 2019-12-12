class Product < ApplicationRecord
  belongs_to :brand
  mount_uploader :image_url, ProductPhotoUploader
  acts_as_taggable_on :tags

end
