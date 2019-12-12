class Brand < ApplicationRecord
  has_many :brand_images, dependent: :destroy
  has_many :products, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :country, presence: true
end
