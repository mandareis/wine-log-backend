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

ActiveRecord::Schema.define(version: 2020_12_07_001759) do

  create_table "comments", force: :cascade do |t|
    t.string "comment"
    t.integer "user_id", null: false
    t.integer "wine_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_comments_on_user_id"
    t.index ["wine_id"], name: "index_comments_on_wine_id"
  end

  create_table "loves", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "wine_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id", "wine_id"], name: "index_loves_on_user_id_and_wine_id", unique: true
    t.index ["user_id"], name: "index_loves_on_user_id"
    t.index ["wine_id"], name: "index_loves_on_wine_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wines", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.string "kind"
    t.string "cost"
    t.string "region"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "img_url"
  end

  add_foreign_key "comments", "users"
  add_foreign_key "comments", "wines"
  add_foreign_key "loves", "users"
  add_foreign_key "loves", "wines"
end
