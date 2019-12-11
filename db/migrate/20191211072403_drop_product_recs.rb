class DropProductRecs < ActiveRecord::Migration[5.2]
  def change
    drop_table :product_recs
  end
end
