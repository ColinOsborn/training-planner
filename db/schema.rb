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

ActiveRecord::Schema.define(version: 20160606160124) do

  create_table "athletes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "image_path"
    t.integer  "age"
    t.string   "location"
    t.string   "height"
    t.integer  "weight"
  end

  create_table "coaches", force: :cascade do |t|
    t.string   "name"
    t.string   "speciality"
    t.string   "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "athlete_id"
  end

  add_index "coaches", ["athlete_id"], name: "index_coaches_on_athlete_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "role"
    t.integer  "athlete_id"
  end

  add_index "users", ["athlete_id"], name: "index_users_on_athlete_id"

  create_table "workouts", force: :cascade do |t|
    t.string   "time"
    t.integer  "distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "athlete_id"
  end

  add_index "workouts", ["athlete_id"], name: "index_workouts_on_athlete_id"

end
