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

ActiveRecord::Schema.define(version: 20150327053305) do

  create_table "searches", force: :cascade do |t|
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "venue_name",        limit: 255
    t.string   "venue_category",    limit: 255
    t.string   "venue_subcategory", limit: 255
    t.string   "address",           limit: 255
    t.boolean  "dancing",           limit: 1
    t.boolean  "allows_under_21",   limit: 1
    t.boolean  "food",              limit: 1
    t.boolean  "has_specials",      limit: 1
    t.boolean  "groups",            limit: 1
    t.string   "price_range",       limit: 255
    t.time     "opening_time"
    t.time     "closing_time"
  end

  create_table "specials", force: :cascade do |t|
    t.string   "description", limit: 255
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "venue_id",    limit: 4
    t.boolean  "mon",         limit: 1
    t.boolean  "tues",        limit: 1
    t.boolean  "wed",         limit: 1
    t.boolean  "thur",        limit: 1
    t.boolean  "fri",         limit: 1
    t.boolean  "sat",         limit: 1
    t.boolean  "sun",         limit: 1
    t.string   "photo",       limit: 255
    t.string   "vname",       limit: 255
  end

  create_table "venue_specials", force: :cascade do |t|
    t.integer "venue_id",   limit: 4
    t.integer "special_id", limit: 4
  end

  create_table "venues", force: :cascade do |t|
    t.string  "venue_name",        limit: 255
    t.string  "venue_category",    limit: 255
    t.string  "venue_subcategory", limit: 255
    t.text    "address",           limit: 65535
    t.boolean "dancing",           limit: 1
    t.boolean "allows_under_21",   limit: 1
    t.boolean "food",              limit: 1
    t.boolean "has_specials",      limit: 1
    t.boolean "groups",            limit: 1
    t.string  "price_range",       limit: 255
    t.time    "opening_time"
    t.time    "closing_time"
    t.string  "photo",             limit: 255
  end

end
