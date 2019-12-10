class ProductRecsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @product_rec = ProductRec.new()
    @product_rec.user = current_user
    @product_rec.product = @product
    @product_rec.rating = 5
  end

  def update
  end

  private

  def product_recs_params
    params.require(:product_rec).permit(:product_id, :rating)
  end
end



