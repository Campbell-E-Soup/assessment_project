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

ActiveRecord::Schema[8.0].define(version: 2025_07_07_220644) do
  create_table "business_types", force: :cascade do |t|
    t.string "name", limit: 25, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customer_days", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "day_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id", "day_id"], name: "index_customer_days_on_customer_id_and_day_id", unique: true
    t.index ["customer_id"], name: "index_customer_days_on_customer_id"
    t.index ["day_id"], name: "index_customer_days_on_day_id"
  end

  create_table "customers", force: :cascade do |t|
    t.integer "business_type_id", null: false
    t.string "address1", limit: 255, null: false
    t.string "address2", limit: 255
    t.string "city", limit: 30, null: false
    t.string "state", limit: 2, null: false
    t.string "zip_code", limit: 10, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_type_id"], name: "index_customers_on_business_type_id"
  end

  create_table "days", force: :cascade do |t|
    t.string "name", limit: 9, null: false
    t.string "name_short", limit: 1, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "customer_days", "customers"
  add_foreign_key "customer_days", "days"
  add_foreign_key "customers", "business_types"
end
