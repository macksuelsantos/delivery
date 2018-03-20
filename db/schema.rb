# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180320003526) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "street"
    t.string "neighborhood"
    t.string "zip_code"
    t.string "state"
    t.string "city"
    t.string "number"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "client_id"
    t.bigint "employee_id"
    t.bigint "order_id"
    t.index ["client_id"], name: "index_addresses_on_client_id"
    t.index ["employee_id"], name: "index_addresses_on_employee_id"
    t.index ["order_id"], name: "index_addresses_on_order_id"
  end

  create_table "clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "phone"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "phone"
    t.date "birthday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "client_id"
    t.string "status"
    t.string "payment"
    t.string "delivery_guy"
    t.decimal "fare", precision: 8, scale: 2
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_orders_on_client_id"
  end

  create_table "products", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.decimal "price", precision: 8, scale: 2
    t.decimal "weight", precision: 8, scale: 2
    t.bigint "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unit_id"], name: "index_products_on_unit_id"
  end

  create_table "units", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "clients"
  add_foreign_key "addresses", "employees"
  add_foreign_key "addresses", "orders"
  add_foreign_key "orders", "clients"
  add_foreign_key "products", "units"
end
