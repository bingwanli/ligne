class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :bio, :string
    add_column :users, :location, :string
    add_column :users, :avatar_url, :string
  end
end
