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

ActiveRecord::Schema.define(version: 20180205221633) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ahoy_events", force: :cascade do |t|
    t.integer  "visit_id"
    t.integer  "user_id"
    t.string   "name"
    t.jsonb    "properties"
    t.datetime "time"
    t.index ["name", "time"], name: "index_ahoy_events_on_name_and_time", using: :btree
    t.index ["user_id", "name"], name: "index_ahoy_events_on_user_id_and_name", using: :btree
    t.index ["visit_id", "name"], name: "index_ahoy_events_on_visit_id_and_name", using: :btree
  end

  create_table "brands", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "video"
    t.string   "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "category"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "parent_category"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "emails", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mattresses", force: :cascade do |t|
    t.string   "name"
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

  create_table "product_categories", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "price"
    t.integer  "brand_id"
    t.string   "images",                   array: true
    t.string   "thumbnail"
    t.string   "number"
    t.string   "dimensions"
    t.string   "brand"
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
    t.string  "search_input"
    t.string  "page_number"
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

  create_table "visits", force: :cascade do |t|
    t.string   "visit_token"
    t.string   "visitor_token"
    t.string   "ip"
    t.text     "user_agent"
    t.text     "referrer"
    t.text     "landing_page"
    t.integer  "user_id"
    t.string   "referring_domain"
    t.string   "search_keyword"
    t.string   "browser"
    t.string   "os"
    t.string   "device_type"
    t.integer  "screen_height"
    t.integer  "screen_width"
    t.string   "country"
    t.string   "region"
    t.string   "city"
    t.string   "postal_code"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.string   "utm_source"
    t.string   "utm_medium"
    t.string   "utm_term"
    t.string   "utm_content"
    t.string   "utm_campaign"
    t.datetime "started_at"
    t.index ["user_id"], name: "index_visits_on_user_id", using: :btree
    t.index ["visit_token"], name: "index_visits_on_visit_token", unique: true, using: :btree
  end

end
