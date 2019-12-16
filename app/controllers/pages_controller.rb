class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  def index
  end

  def recs
    brands = []
    current_user.liked_brand_images.each do |image|
      if brands.include?(image.brand)
      else brands << image.brand
      end
    end
    @brands = brands
  end
end
