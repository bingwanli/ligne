class BrandImage < ApplicationRecord
  belongs_to :brand
  mount_uploader :url, BrandImageUploader

  validates :url, presence: true, uniqueness: true
  validates :brand, presence: true
end
