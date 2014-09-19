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

ActiveRecord::Schema.define(version: 20140919044624) do

  create_table "feelings", force: true do |t|
    t.integer  "symptom_id", null: false
    t.integer  "meal_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feelings", ["meal_id"], name: "index_feelings_on_meal_id"
  add_index "feelings", ["symptom_id"], name: "index_feelings_on_symptom_id"

  create_table "foods", force: true do |t|
    t.string   "name"
    t.string   "unit"
    t.integer  "calories_per_unit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meal_items", force: true do |t|
    t.integer  "meal_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meal_items", ["meal_id"], name: "index_meal_items_on_meal_id"

  create_table "meals", force: true do |t|
    t.integer  "time_cd",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "meals", ["time_cd"], name: "index_meals_on_time_cd"

  create_table "portions", force: true do |t|
    t.integer  "meal_id"
    t.integer  "food_id"
    t.integer  "size"
    t.integer  "unit_cd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "portions", ["food_id"], name: "index_portions_on_food_id"
  add_index "portions", ["meal_id"], name: "index_portions_on_meal_id"
  add_index "portions", ["unit_cd"], name: "index_portions_on_unit_cd"

  create_table "symptoms", force: true do |t|
    t.string   "name",       default: "", null: false
    t.integer  "severity",   default: 0,  null: false
    t.integer  "meal_id",                 null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "symptoms", ["meal_id"], name: "index_symptoms_on_meal_id"
  add_index "symptoms", ["severity"], name: "index_symptoms_on_severity"

end
