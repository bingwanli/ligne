class Brand < ApplicationRecord
  acts_as_taggable_on :tags
  has_many :brand_images
  has_many :products

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
end
