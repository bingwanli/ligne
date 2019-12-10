class ProductsController < ApplicationController

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @brand = Brand.find(params[:brand_id])
  end

  def create
    @product = Product.new(products_params)
    @product.brand = Brand.find(params[:brand_id])
    respond_to do |format|
      if @product.save
        format.html { redirect_to @product.brand, notice: 'product info successfully uploaded.'}
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
  end

  private

  def products_params
    params.require(:product).permit(:name, :price, :description, :url,
      :brand_id, :is_available, :image_url)
  end
end
