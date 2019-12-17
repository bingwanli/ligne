class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
  end

  def recs
    brand_image_array
    brand_image_to_products
    recommendations
  end

  private

  def brand_image_array
    brands = []
    current_user.liked_brand_images.each do |image|
      if brands.include?(image.brand)
      else brands << image.brand
        @brands = brands
      end
    end
  end

  def brand_image_to_products
    @products = []
    @brands.each do |brand|
      @products << brand.products.shuffle
    end
  end

  def recommendations
    @recommendations = current_user.recommended_products.limit(3)
  end
end
