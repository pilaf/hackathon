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

ActiveRecord::Schema.define(version: 20130505031804) do

  create_table "cities", force: true do |t|
    t.string   "name"
    t.string   "subdomain"
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "issue_id"
  end

  add_index "comments", ["issue_id"], name: "index_comments_on_issue_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "issue_labels", force: true do |t|
    t.integer  "issue_id"
    t.integer  "label_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "issue_labels", ["issue_id"], name: "index_issue_labels_on_issue_id"
  add_index "issue_labels", ["label_id"], name: "index_issue_labels_on_label_id"

  create_table "issues", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "creator_id"
    t.integer  "assignee_id"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "status",      default: 1
  end

  add_index "issues", ["assignee_id"], name: "index_issues_on_assignee_id"
  add_index "issues", ["city_id"], name: "index_issues_on_city_id"
  add_index "issues", ["creator_id"], name: "index_issues_on_creator_id"

  create_table "labels", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["imageable_id"], name: "index_photos_on_imageable_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "company"
    t.string   "url"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "collaborator",    default: false
  end

end
