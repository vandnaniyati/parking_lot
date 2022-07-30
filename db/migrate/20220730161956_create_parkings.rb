class CreateParkings < ActiveRecord::Migration[7.0]
  def change
    create_table :parkings do |t|
      t.string :name
      t.string :number, index: { unique: true }
      t.text :location

      t.timestamps
    end
  end
end
