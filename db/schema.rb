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

ActiveRecord::Schema.define(version: 20161031001430) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beercolours", force: :cascade do |t|
    t.string   "name"
    t.string   "hexcode"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "colour_image"
  end

  create_table "beerposts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "colour_id"
    t.integer  "beercolour_id"
    t.integer  "brewery_id"
    t.string   "image"
  end

  create_table "breweries", force: :cascade do |t|
    t.string   "name"
    t.string   "addr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "winecolours", force: :cascade do |t|
    t.string   "name"
    t.string   "hexcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wineposts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "winecolour_id"
    t.integer  "winery_id"
  end

  create_table "wineries", force: :cascade do |t|
    t.string   "name"
    t.string   "addr"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
