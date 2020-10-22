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

ActiveRecord::Schema.define(version: 2020_10_22_224443) do

  create_table "pokemen", force: :cascade do |t|
    t.decimal "entryNumber"
    t.string "name"
    t.boolean "legendary"
    t.decimal "generation"
    t.integer "Stats_id", null: false
    t.integer "Type_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Stats_id"], name: "index_pokemen_on_Stats_id"
    t.index ["Type_id"], name: "index_pokemen_on_Type_id"
  end

  create_table "stats", force: :cascade do |t|
    t.decimal "totalStats"
    t.decimal "hp"
    t.decimal "attack"
    t.decimal "defense"
    t.decimal "spatk"
    t.decimal "spdef"
    t.decimal "speed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "type1"
    t.string "type2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "pokemen", "Stats", column: "Stats_id"
  add_foreign_key "pokemen", "Types"
end
