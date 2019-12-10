class BrandImagesController < ApplicationController
  def index
    @brand_images = BrandImage.all
  end

  def show
    @brand_image = BrandImage.find(params[:id])
  end

  def create
    @brand_image = BrandImage.new(brand_images_params)
  end

  private

  def brand_images_params
    params.require(:brand_image).permit(:url)
  end
end
