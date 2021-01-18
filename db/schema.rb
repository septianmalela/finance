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

ActiveRecord::Schema.define(version: 2021_01_18_061052) do

  create_table "bungas", charset: "utf8mb4", force: :cascade do |t|
    t.string "bunga"
    t.integer "range_bunga"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "finances", charset: "utf8mb4", force: :cascade do |t|
    t.string "tujuan_nabung"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nabungs", charset: "utf8mb4", force: :cascade do |t|
    t.string "tujuan_nabung"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tabungans", charset: "utf8mb4", force: :cascade do |t|
    t.string "tujuan_nabung"
    t.integer "target_dana"
    t.integer "biaya_perbulan"
    t.integer "tempo"
    t.string "range_bunga"
    t.integer "saldo_awal"
    t.date "awal_nabung"
    t.integer "bunga_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
