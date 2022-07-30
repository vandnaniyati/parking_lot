# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_30_185029) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "registration_number"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entry_points", force: :cascade do |t|
    t.string "number"
    t.integer "parking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entry_points_spots", force: :cascade do |t|
    t.integer "entry_point_id"
    t.integer "spot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entry_point_id", "spot_id"], name: "index_entry_points_spots_on_entry_point_id_and_spot_id"
    t.index ["spot_id"], name: "index_entry_points_spots_on_spot_id"
  end

  create_table "parkings", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.text "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["number"], name: "index_parkings_on_number", unique: true
  end

  create_table "spots", force: :cascade do |t|
    t.string "number"
    t.integer "parking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["parking_id"], name: "index_spots_on_parking_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.integer "parking_id"
    t.integer "entry_point_id"
    t.integer "spot_id"
    t.integer "car_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entry_point_id"], name: "index_tickets_on_entry_point_id"
    t.index ["parking_id"], name: "index_tickets_on_parking_id"
  end

end
