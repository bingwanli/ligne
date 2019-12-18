class Product < ApplicationRecord
  belongs_to :brand
  mount_uploader :image_url, ProductPhotoUploader
  acts_as_taggable_on :tags

  validates :image_url, presence: true
  validates :name, presence: true
  validates :price, numericality: { only_integer: true, allow_nil: true }
end
