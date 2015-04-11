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

ActiveRecord::Schema.define(version: 20150411180249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cells", force: :cascade do |t|
    t.text     "status",     default: "antibody", null: false
    t.integer  "system_id",                       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "systems", force: :cascade do |t|
    t.string  "status",          default: "uncompromised"
    t.integer "memory",          default: 0
    t.integer "differentiation", default: 10
    t.integer "apoptosis",       default: 0
    t.integer "pyrogenation",    default: 0
    t.integer "user_id",                                   null: false
    t.string  "stage",           default: "innate"
    t.integer "meta_points",     default: 30
    t.integer "balance_points",  default: 0
  end

  add_index "systems", ["user_id"], name: "index_systems_on_user_id", unique: true, using: :btree

  create_table "tests", force: :cascade do |t|
    t.string "nothing"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "viri", force: :cascade do |t|
    t.text     "status",     default: "latent", null: false
    t.integer  "system_id",                     null: false
    t.integer  "cell_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
