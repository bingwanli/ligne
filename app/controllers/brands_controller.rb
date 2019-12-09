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
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def update
  end

  private

  def brands_params
    params.require(:brand).permit(:name, :description, :country)
  end
end
