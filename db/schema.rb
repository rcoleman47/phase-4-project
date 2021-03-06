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

ActiveRecord::Schema[7.0].define(version: 2022_06_23_185741) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "image_url"
  end

  create_table "holes", force: :cascade do |t|
    t.integer "number"
    t.integer "par"
    t.integer "distance"
    t.integer "handicap"
    t.bigint "tee_box_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tee_box_id"], name: "index_holes_on_tee_box_id"
  end

  create_table "rounds", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "course_id", null: false
    t.string "tee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_rounds_on_course_id"
    t.index ["user_id"], name: "index_rounds_on_user_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "hole_number"
    t.integer "score"
    t.boolean "gir"
    t.boolean "fir"
    t.integer "putts"
    t.bigint "round_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["round_id"], name: "index_scores_on_round_id"
  end

  create_table "tee_boxes", force: :cascade do |t|
    t.string "tee"
    t.string "color"
    t.integer "par"
    t.bigint "course_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "slope"
    t.integer "rating"
    t.index ["course_id"], name: "index_tee_boxes_on_course_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "holes", "tee_boxes"
  add_foreign_key "rounds", "courses"
  add_foreign_key "rounds", "users"
  add_foreign_key "scores", "rounds"
  add_foreign_key "tee_boxes", "courses"
end
