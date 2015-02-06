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

ActiveRecord::Schema.define(version: 20150206115112) do

  create_table "articles", force: :cascade do |t|
    t.string   "title",           limit: 255
    t.text     "content",         limit: 65535
    t.date     "date"
    t.string   "description",     limit: 255
    t.integer  "comments_number", limit: 4
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "user_id",         limit: 4
  end

  add_index "articles", ["user_id"], name: "index_articles_on_user_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.text     "body",             limit: 65535
    t.integer  "commentable_id",   limit: 4
    t.string   "commentable_type", limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "user_id",          limit: 4
  end

  add_index "comments", ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree
  add_index "comments", ["user_id"], name: "index_comments_on_user_id", using: :btree

  create_table "event_categories", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "events_number", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",             limit: 255
    t.string   "place",             limit: 255
    t.date     "date"
    t.text     "description",       limit: 65535
    t.integer  "members_number",    limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "user_id",           limit: 4
    t.integer  "event_category_id", limit: 4
  end

  add_index "events", ["event_category_id"], name: "index_events_on_event_category_id", using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",                   limit: 255
    t.string   "place",                  limit: 255
    t.string   "avatar",                 limit: 255
    t.boolean  "editor",                 limit: 1
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "articles", "users"
  add_foreign_key "comments", "users"
  add_foreign_key "events", "event_categories"
  add_foreign_key "events", "users"
end
