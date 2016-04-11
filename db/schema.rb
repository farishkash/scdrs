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

ActiveRecord::Schema.define(version: 20160411022023) do

  create_table "churches", force: :cascade do |t|
    t.string   "church_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "event_name"
    t.string   "event_description"
    t.date     "event_date_from"
    t.date     "event_date_to"
    t.date     "event_deadline"
    t.integer  "event_price_before_deadline"
    t.integer  "event_price_after_deadline"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string   "guest_name"
    t.string   "guest_address_1"
    t.string   "guest_address_2"
    t.string   "guest_city"
    t.string   "guest_state"
    t.string   "guest_zip"
    t.string   "guest_email"
    t.string   "guest_phone_number"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "event_id"
  end

  add_index "guests", ["event_id"], name: "index_guests_on_event_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
