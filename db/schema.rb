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

ActiveRecord::Schema.define(version: 20140414103221) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "add_users", force: true do |t|
    t.string   "name"
    t.string   "password"
    t.integer  "level"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "fullcalendar_engine_event_series", force: true do |t|
    t.integer  "frequency",  default: 1
    t.string   "period",     default: "monthly"
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean  "all_day",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fullcalendar_engine_events", force: true do |t|
    t.string   "title"
    t.datetime "starttime"
    t.datetime "endtime"
    t.boolean  "all_day",         default: false
    t.text     "description"
    t.integer  "event_series_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fullcalendar_engine_events", ["event_series_id"], name: "index_fullcalendar_engine_events_on_event_series_id", using: :btree

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
    t.date     "finalreport"
    t.integer  "grantsub_id"
    t.boolean  "archive"
  end

  create_table "grantsubs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_allocations", force: true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_comments", force: true do |t|
    t.string   "name"
    t.string   "comment"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  create_table "projectcats", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.integer  "grant_id"
    t.integer  "studentship_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ships_subs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shipssubs", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statuses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_subcats", force: true do |t|
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

  create_table "studentships", force: true do |t|
    t.integer  "student_subcat_id"
    t.string   "code"
    t.date     "startdate"
    t.boolean  "fire"
    t.boolean  "screenttest"
    t.boolean  "training"
    t.boolean  "firestatus"
    t.boolean  "screenstatus"
    t.boolean  "trainstatus"
    t.boolean  "m12"
    t.date     "m12date"
    t.boolean  "m24"
    t.date     "m24date"
    t.boolean  "complete"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "fdate"
    t.date     "sdate"
    t.boolean  "m36"
    t.date     "m36date"
    t.date     "enddate"
    t.date     "tdate"
    t.integer  "status"
    t.boolean  "archive"
  end

  create_table "sub_tasks", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.date     "enddate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "task_id"
    t.integer  "status"
  end

  create_table "task_comments", force: true do |t|
    t.string   "name"
    t.string   "comment"
    t.integer  "user_id"
    t.integer  "task_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.date     "startdate"
    t.date     "enddate"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
    t.boolean  "archive"
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
