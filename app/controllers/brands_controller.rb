class BrandsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :country]

  def index
    @brands = Brand.all
  end

  def country
    @brands = Brand.where(country: params[:query])
    # below is for testing purposes only, delete
  end

  def show
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brands_params)
    @brand_images = @brand.brand_images.build

    respond_to do |format|
      if @brand.save
        params[:brand_images]['url'].each do |i|
          @brand_images = @brand.brand_images.create!(:url => i,
            :brand_id => @brand.id)
        end
        format.html { redirect_to @brand, notice: 'Brand and brand images were successfully uploaded.'}
      else
        format.html { render action: 'new' }
      end
    end
  end

  def destroy
  end

  def edit
  end

  def update
     @brand = Brand.find(params[:id])
    if current_user.likes?(@brand)
      current_user.unlike(@brand)
      flash[:notice] = "Unloved!"
    else
      current_user.like(@brand)
      flash[:notice] = "Loved!"
    end
  end

  private

  def brands_params
    params.require(:brand).permit(:name, :description, :country, :url, brand_images_attributes: [:id, :url, :brand_id])
  end
end
