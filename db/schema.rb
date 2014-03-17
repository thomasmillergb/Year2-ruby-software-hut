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

ActiveRecord::Schema.define(version: 20140317140416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "awards", force: true do |t|
    t.string   "name"
    t.integer  "year"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "deliverables", force: true do |t|
    t.integer  "grants_id"
    t.string   "name"
    t.string   "description"
    t.date     "start"
    t.date     "deadline"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funders", force: true do |t|
    t.string   "name"
    t.integer  "type_id"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grant_allocations", force: true do |t|
    t.integer  "user_id"
    t.integer  "grant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grants", force: true do |t|
    t.string   "name"
    t.date     "start"
    t.date     "deadline"
    t.integer  "status"
    t.integer  "funder_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "code"
    t.string   "awarded_to"
  end

  create_table "sessions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birth_date"
    t.float    "gpa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "type_of_funders", force: true do |t|
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "name"
    t.string   "surname"
    t.string   "email"
    t.string   "password"
    t.integer  "userLevel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
