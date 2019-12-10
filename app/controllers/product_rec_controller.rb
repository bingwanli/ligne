class ProductRecController < ApplicationController
  def create
    @product_rec = ProductRec.new(product_rec_params)
  end

  def update
  end

  private

  def product_rec_params
    params.require(:product_rec).permit(:user_id, :product_id, :rating)
  end
end
