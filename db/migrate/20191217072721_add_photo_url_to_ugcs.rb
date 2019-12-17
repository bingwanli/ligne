class AddPhotoUrlToUgcs < ActiveRecord::Migration[5.2]
  def change
    add_column :ugcs, :photo_url, :string
  end
end
