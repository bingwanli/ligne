class Brand < ApplicationRecord
  has_many :brand_images
  has_many :products
end
