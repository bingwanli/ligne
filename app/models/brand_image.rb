class BrandImage < ApplicationRecord
  belongs_to :brand
  mount_uploader :url, BrandImageUploader

  validates :brand, presence: true
end
