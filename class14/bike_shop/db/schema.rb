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

ActiveRecord::Schema.define(version: 20130829002913) do

  create_table "bicycle_orders", force: true do |t|
    t.string  "name"
    t.integer "wheel_set_id"
  end

  add_index "bicycle_orders", ["wheel_set_id"], name: "index_bicycle_orders_on_wheel_set_id"

  create_table "wheel_sets", force: true do |t|
    t.string "name"
  end

end
