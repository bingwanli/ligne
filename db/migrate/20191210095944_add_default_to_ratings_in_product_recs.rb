class AddDefaultToRatingsInProductRecs < ActiveRecord::Migration[5.2]
  def change
    change_column :product_recs, :rating, :integer, default: 0
  end
end
