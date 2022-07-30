class CreateEntryPoints < ActiveRecord::Migration[7.0]
  def change
    create_table :entry_points do |t|
      t.string :number
      t.integer :parking_id

      t.timestamps
    end
  end
end
