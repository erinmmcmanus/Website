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

ActiveRecord::Schema.define(version: 2018_11_26_064026) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "attachment_binaries", force: :cascade do |t|
    t.integer "attachment_id"
    t.binary "data", limit: 10485760
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["attachment_id"], name: "index_attachment_binaries_on_attachment_id"
  end

  create_table "attachments", force: :cascade do |t|
    t.integer "owner_id"
    t.string "owner_type"
    t.string "token"
    t.string "digest"
    t.string "role"
    t.string "type"
    t.string "file_name"
    t.string "file_type"
    t.string "cache_type"
    t.string "cache_max_age"
    t.string "disposition"
    t.integer "file_size"
    t.integer "parent_id"
    t.boolean "processed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "custom"
    t.boolean "serve", default: true
    t.index ["owner_id"], name: "index_attachments_on_owner_id"
    t.index ["token"], name: "index_attachments_on_token"
  end

  create_table "comments", force: :cascade do |t|
    t.string "commenter"
    t.text "body"
    t.integer "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_comments_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "flname"
    t.text "subjects"
    t.string "age"
    t.string "phonenumber"
    t.string "email"
    t.text "experience"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
