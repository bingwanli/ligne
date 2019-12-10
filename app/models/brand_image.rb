class BrandImage < ApplicationRecord
  belongs_to :brand
  mount_uploader :photo, PhotoUploader
end
