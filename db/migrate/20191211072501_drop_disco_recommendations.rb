class DropDiscoRecommendations < ActiveRecord::Migration[5.2]
  def change
    drop_table :disco_recommendations
  end
end
