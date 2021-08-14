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

ActiveRecord::Schema.define(version: 2021_08_14_185705) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pets", force: :cascade do |t|
    t.boolean "adoptable"
    t.integer "age"
    t.string "color"
    t.string "breed"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "shelters_id"
    t.index ["shelters_id"], name: "index_pets_on_shelters_id"
  end

  create_table "shelters", force: :cascade do |t|
    t.boolean "foster_program"
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "veterinarians", force: :cascade do |t|
    t.integer "review_rating"
    t.string "name"
    t.string "schedule"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "veterinary_offices_id"
    t.index ["veterinary_offices_id"], name: "index_veterinarians_on_veterinary_offices_id"
  end

  create_table "veterinary_offices", force: :cascade do |t|
    t.boolean "overnight_stay"
    t.integer "max_capacity"
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "pets", "shelters", column: "shelters_id"
  add_foreign_key "veterinarians", "veterinary_offices", column: "veterinary_offices_id"
end
