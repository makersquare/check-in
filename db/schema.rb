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

ActiveRecord::Schema.define(version: 20131121210143) do

  create_table "phone_networks", force: true do |t|
    t.string   "name"
    t.string   "sms_email_suffix"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pings", force: true do |t|
    t.string   "message"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pings", ["user_id"], name: "index_pings_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.integer  "phone_network_id"
    t.integer  "ping_count"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "grav_email"
    t.string   "image"
    t.integer  "priority_order"
    t.string   "role"
  end

end
