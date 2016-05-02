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

ActiveRecord::Schema.define(version: 20160426151641) do

  create_table "applications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "token"
    t.boolean  "active",     default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["name"], name: "index_applications_on_name", unique: true, using: :btree
  end

  create_table "request_logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "application_id"
    t.integer  "user_id"
    t.string   "action"
    t.string   "controller"
    t.text     "params",         limit: 65535
    t.string   "ip_address"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["application_id"], name: "index_request_logs_on_application_id", using: :btree
  end

  create_table "tags", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "text_log_id"
    t.string   "text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["text_log_id"], name: "index_tags_on_text_log_id", using: :btree
  end

  create_table "text_logs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "application_id"
    t.text     "text",           limit: 65535
    t.string   "ip_address"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["application_id"], name: "index_text_logs_on_application_id", using: :btree
  end

  add_foreign_key "request_logs", "applications"
  add_foreign_key "tags", "text_logs"
  add_foreign_key "text_logs", "applications"
end
