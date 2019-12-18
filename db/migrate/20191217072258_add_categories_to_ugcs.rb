class AddCategoriesToUgcs < ActiveRecord::Migration[5.2]
  def change
    add_reference :ugcs, :user, foreign_key: true
    add_column :ugcs, :brand, :string
    add_column :ugcs, :title, :string
    add_column :ugcs, :comment, :string
  end
end
