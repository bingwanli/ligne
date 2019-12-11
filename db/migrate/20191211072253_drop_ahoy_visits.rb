class DropAhoyVisits < ActiveRecord::Migration[5.2]
  def change
    drop_table :ahoy_visits
  end
end
