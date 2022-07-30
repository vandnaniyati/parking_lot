class CreateEntryPointsSpot < ActiveRecord::Migration[7.0]
  def change
    create_table :entry_points_spots do |t|
      t.integer :entry_point_id
      t.integer :spot_id

      t.timestamps
    end

    add_index :entry_points_spots, [:entry_point_id, :spot_id]
    add_index :entry_points_spots, :spot_id
  end
end
