class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :description
      t.string :url
      t.references :brand, foreign_key: true
      t.string :is_available

      t.timestamps
    end
  end
end
