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

ActiveRecord::Schema.define(version: 20150201195632) do

  create_table "apartment_photos", force: :cascade do |t|
    t.string   "image"
    t.integer  "apartment_photo_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "apartment_photos", ["apartment_photo_id"], name: "index_apartment_photos_on_apartment_photo_id"

  create_table "apartments", force: :cascade do |t|
    t.string   "service",     null: false
    t.string   "url",         null: false
    t.string   "title",       null: false
    t.text     "description"
    t.integer  "floor"
    t.integer  "rooms"
    t.integer  "price"
    t.string   "added_at"
    t.boolean  "makler"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "apartments", ["url"], name: "index_apartments_on_url", unique: true

  create_table "apartments_phones", id: false, force: :cascade do |t|
    t.integer "apartment_id"
    t.integer "phone_id"
  end

  add_index "apartments_phones", ["apartment_id", "phone_id"], name: "index_apartments_phones_on_apartment_id_and_phone_id"
  add_index "apartments_phones", ["phone_id", "apartment_id"], name: "index_apartments_phones_on_phone_id_and_apartment_id"

  create_table "phones", force: :cascade do |t|
    t.string   "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
