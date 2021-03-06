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

ActiveRecord::Schema.define(version: 20180328144959) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "benefits", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "benefit"
    t.bigint "challenge_id"
    t.index ["challenge_id"], name: "index_benefits_on_challenge_id"
  end

  create_table "challenges", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "acceptable"
    t.string "cost_inaction_hy"
    t.string "cost_inaction_yr"
    t.string "cost_inaction_3y"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "challenge"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_challenges_on_user_id"
  end

  create_table "fears", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fear"
    t.bigint "challenge_id"
    t.index ["challenge_id"], name: "index_fears_on_challenge_id"
  end

  create_table "fixes", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "fix"
    t.bigint "fear_id"
    t.index ["fear_id"], name: "index_fixes_on_fear_id"
  end

  create_table "preventions", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "prevention"
    t.bigint "fear_id"
    t.index ["fear_id"], name: "index_preventions_on_fear_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user"
    t.string "name"
    t.string "authentication_token", limit: 30
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "benefits", "challenges"
  add_foreign_key "challenges", "users"
  add_foreign_key "fears", "challenges"
  add_foreign_key "fixes", "fears"
  add_foreign_key "preventions", "fears"
end
