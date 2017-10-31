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

ActiveRecord::Schema.define(version: 20171031203016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "video"
    t.string   "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "category"
  end

  create_table "emails", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mattresses", force: :cascade do |t|
    t.string   "name"
    t.integer  "manufacturer_id"
    t.integer  "price"
    t.string   "features",         default: [],              array: true
    t.string   "image"
    t.string   "description"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.string   "firmness"
    t.integer  "warranty_length"
    t.string   "warranty_details"
    t.string   "sizes",            default: [],              array: true
    t.integer  "brand_id"
    t.string   "components",       default: [],              array: true
    t.boolean  "adjustable"
    t.string   "price_sizes"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.string   "description"
    t.string   "image"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "pieces"
    t.string   "style"
    t.boolean  "counter_height"
    t.boolean  "sectional"
    t.boolean  "sofa_love"
    t.integer  "price"
    t.integer  "brand_id"
    t.boolean  "motion"
  end

  create_table "promotions", force: :cascade do |t|
    t.string   "name"
    t.date     "end_date"
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.integer "min"
    t.integer "max"
    t.string  "size"
    t.string  "features"
    t.integer "pieces"
    t.string  "style"
    t.boolean "counter_height"
    t.boolean "sectional"
    t.boolean "sofa_love"
    t.string  "category"
    t.boolean "motion"
  end

  create_table "stores", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "hours"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "facebook"
    t.string   "instagram"
    t.string   "twitter"
    t.string   "pinterest"
    t.string   "email"
    t.string   "store_image"
    t.string   "store_copy"
    t.string   "gmaps"
  end

end
