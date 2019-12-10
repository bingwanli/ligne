class AddBrandtoProductRecs < ActiveRecord::Migration[5.2]
  def change
    add_reference :product_recs, :brand, foreign_key: true
  end
end
