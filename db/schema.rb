# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_30_200502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "intrinsic_desires", force: :cascade do |t|
    t.integer "strength"
    t.bigint "robot_id", null: false
    t.bigint "product_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_type_id"], name: "index_intrinsic_desires_on_product_type_id"
    t.index ["robot_id"], name: "index_intrinsic_desires_on_robot_id"
  end

  create_table "product_items", force: :cascade do |t|
    t.integer "current_durability"
    t.bigint "robot_id", null: false
    t.bigint "product_type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_type_id"], name: "index_product_items_on_product_type_id"
    t.index ["robot_id"], name: "index_product_items_on_robot_id"
  end

  create_table "product_types", force: :cascade do |t|
    t.string "name"
    t.integer "max_durability"
    t.integer "base_production_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "robots", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "intrinsic_desires", "product_types"
  add_foreign_key "intrinsic_desires", "robots"
  add_foreign_key "product_items", "product_types"
  add_foreign_key "product_items", "robots"
end