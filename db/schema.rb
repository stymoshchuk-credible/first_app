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

ActiveRecord::Schema.define(version: 2021_09_02_095109) do

  create_table "buses", force: :cascade do |t|
    t.string "bus_name"
    t.integer "number_of_seats"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "ticket_price"
  end

  create_table "tickets", force: :cascade do |t|
    t.string "name"
    t.string "seat_id_seq"
    t.text "address"
    t.decimal "price_paid"
    t.string "email_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "phone"
    t.integer "bus_id"
    t.index ["bus_id"], name: "index_tickets_on_bus_id"
  end

  create_table "tickets_buses", force: :cascade do |t|
    t.string "name"
    t.string "seat_id_seq"
    t.integer "bus_id"
    t.text "address"
    t.decimal "price_paid"
    t.string "email_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bus_id"], name: "index_tickets_buses_on_bus_id"
  end

end
