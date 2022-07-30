class CreateSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :spots do |t|
      t.string :number
      t.integer :parking_id, index: true
      t.timestamps
    end
  end
end
