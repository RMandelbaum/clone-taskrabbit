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

ActiveRecord::Schema.define(version: 20161003071834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "industries", force: :cascade do |t|
    t.string   "keyword"
    t.string   "title"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.integer  "zip_code"
    t.string   "zip_cody_type"
    t.string   "city"
    t.string   "state"
    t.float    "lat"
    t.float    "lng"
    t.string   "country"
    t.string   "location_text"
    t.string   "location"
    t.string   "estimated_population"
    t.string   "total_wages"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "keyword"
    t.string   "title"
    t.string   "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_industries", force: :cascade do |t|
    t.string   "keyword"
    t.string   "title"
    t.integer  "industry_id"
    t.string   "industry_type"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "sub_industries", ["industry_type", "industry_id"], name: "index_sub_industries_on_industry_type_and_industry_id", using: :btree

  create_table "tasks", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "company"
    t.string   "url"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
  end

end
