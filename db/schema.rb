# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151112194206) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parks", force: :cascade do |t|
    t.string  "name"
    t.string  "designation"
    t.string  "state"
    t.integer "year_authorized"
  end

  create_table "past_places", force: :cascade do |t|
    t.integer "park_id"
    t.integer "profile_id"
    t.text    "favorite_thing"
    t.text    "improvement"
    t.date    "date_begin"
    t.date    "date_end"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "user_name"
    t.string "surname"
    t.string "given_name"
    t.string "favorite_park"
    t.string "home_state"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

end
