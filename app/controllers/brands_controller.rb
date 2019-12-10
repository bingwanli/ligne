class BrandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @brands = Brand.all
  end

  def country
    @brands = Brand.where(country: params[:query])
  end

  def show
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.create(brands_params)
    @brand_images = @brand.brand_images.build
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def brands_params
    params.require(:brand).permit(:name, :description, :country, brand_images_attributes: [:id, :url, :brand_id])
  end
end
