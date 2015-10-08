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

ActiveRecord::Schema.define(version: 20150829153538) do

  create_table "comments", force: true do |t|
    t.text     "comment",    default: "", null: false
    t.integer  "parent_id",  default: -1
    t.integer  "subject_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subject_of_speeches", force: true do |t|
    t.string   "title"
    t.integer  "user_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sub_title",          default: "", null: false
    t.text     "costar",             default: "", null: false
    t.string   "category",           default: "", null: false
    t.string   "keywords",           default: "", null: false
    t.string   "presentation_style", default: "", null: false
    t.string   "status",             default: "", null: false
    t.integer  "next_id",            default: -1
    t.integer  "prev_id",            default: -1
  end

  add_index "subject_of_speeches", ["user_id", "created_at"], name: "index_subject_of_speeches_on_user_id_and_created_at"

  create_table "users", force: true do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name",                   default: "", null: false
    t.string   "name_kana",              default: "", null: false
    t.string   "affiliation",            default: "", null: false
    t.string   "tel",                    default: "", null: false
    t.string   "fax",                    default: "", null: false
    t.integer  "role",                   default: 2,  null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
