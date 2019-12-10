class DeleteBrandFromProductRecs < ActiveRecord::Migration[5.2]
  def change
    remove_column :product_recs, :brand_id
  end
end
