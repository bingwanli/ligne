class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
  end

  def recs
    brands = []
    current_user.liked_brand_images.each do |image|
      if brands.include?(image.brand)
      else brands << image.brand
      @brands = brands
      end
    end

    @brands = brands
    @products = []
    @brands.each do |brand|
      @products << brand.products.shuffle
    end

    @recommendations = current_user.recommended_for(Product, limit = 10, offset = 0)
  end
end
