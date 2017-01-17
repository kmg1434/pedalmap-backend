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

ActiveRecord::Schema.define(version: 20170113185625) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "board_pedals", force: :cascade do |t|
    t.integer  "board_id"
    t.integer  "pedal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "board_pedals", ["board_id"], name: "index_board_pedals_on_board_id", using: :btree
  add_index "board_pedals", ["pedal_id"], name: "index_board_pedals_on_pedal_id", using: :btree

  create_table "boards", force: :cascade do |t|
    t.string   "name"
    t.float    "length"
    t.float    "width"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "boards", ["user_id"], name: "index_boards_on_user_id", using: :btree

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "pedals", force: :cascade do |t|
    t.string   "name",       null: false
    t.float    "length"
    t.float    "width"
    t.string   "link"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pedals", ["name"], name: "index_pedals_on_name", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "board_pedals", "boards"
  add_foreign_key "board_pedals", "pedals"
  add_foreign_key "boards", "users"
  add_foreign_key "examples", "users"
end
