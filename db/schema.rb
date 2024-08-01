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

ActiveRecord::Schema[7.1].define(version: 2024_08_01_065047) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "order_purchase_order_line_items", force: :cascade do |t|
    t.integer "line_number"
    t.string "sku_code"
    t.string "sku_description"
    t.string "uom"
    t.integer "ordered_qty"
    t.integer "received_qty"
    t.string "sku_holdcode"
    t.string "sku_type"
    t.bigint "purchase_order_id", null: false
    t.integer "tenant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["purchase_order_id"], name: "index_order_purchase_order_line_items_on_purchase_order_id"
  end

  create_table "order_purchase_orders", force: :cascade do |t|
    t.string "order_number"
    t.string "external_order_id"
    t.string "po_type"
    t.string "status"
    t.string "business_unit"
    t.date "order_date"
    t.date "receipt_date"
    t.integer "estimated_lpn"
    t.integer "tenant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skus", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "tenant_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "order_purchase_order_line_items", "order_purchase_orders", column: "purchase_order_id"
end
