class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|

      t.integer :parking_id, index: true
      t.integer :entry_point_id, index: true
      t.integer :spot_id
      t.integer :car_id

      t.timestamps
    end
  end
end
