class BrandImagesController < ApplicationController

  def create
    @brand_image = BrandImage.new(brand_images_params)
  end

  def update
    @brand = Brand.find(params[:brand_id])
    @brand_image = BrandImage.find(params[:id])
    if current_user.likes?(@brand_image)
      current_user.unlike(@brand_image)
    else
      current_user.like(@brand_image)
    end
  end

  private

  def brand_images_params
    params.require(:brand_image).permit(:url)
  end
end
