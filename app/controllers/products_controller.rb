class ProductsController < ApplicationController
  def index
    @products = Product.all
    @recommended_products = current_user.recommended_products
  end

  def show
    @product = Product.find(params[:id])
    # creates a new like for every click
    @product_rec = ProductRec.new
  end

  def new
    @product = Product.new
    @brand = Brand.find(params[:brand_id])
  end

  def create
    @product = Product.new(products_params)
    respond_to do |format|
      if @product.save
        format.html { redirect_to product_path(@product), notice: 'product info successfully uploaded.'}
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
