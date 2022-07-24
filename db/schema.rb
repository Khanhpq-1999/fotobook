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

ActiveRecord::Schema[7.0].define(version: 2022_07_24_175644) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string "title", limit: 140
    t.string "description", limit: 300
    t.string "status", limit: 15
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "users_id"
    t.index ["users_id"], name: "index_albums_on_users_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "url", limit: 255
    t.string "title", limit: 140
    t.string "description", limit: 300
    t.string "status", limit: 15
    t.bigint "albums_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["albums_id"], name: "index_photos_on_albums_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", limit: 25
    t.string "last_name", limit: 25
    t.string "email", limit: 255
    t.string "password", limit: 65
    t.boolean "active", default: true
    t.boolean "is_admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end