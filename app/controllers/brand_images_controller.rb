class BrandImagesController < ApplicationController

  def create
    @brand_image = BrandImage.new(brand_images_params)
  end

  private

  def brand_images_params
    params.require(:brand_image).permit(:url)
  end
end
