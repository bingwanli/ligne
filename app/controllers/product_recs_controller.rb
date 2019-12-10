class ProductRecsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @brand = Brand.find(params[:brand_id])
    @product_rec = ProductRec.new()
    @product_rec.user = current_user
    @product_rec.product = @product
    @product_rec.brand_id = @brand.id
    @product_rec.rating = 5
    if @product_rec.save
      redirect_to brand_product_path(@brand, @product)
    else
      render :new
    end
  end

  def update
  end

  private

  def product_recs_params
    params.require(:product_rec).permit(:user_id, :product_id, :brand_id, :rating)
  end
end
