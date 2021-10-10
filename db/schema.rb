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

ActiveRecord::Schema.define(version: 2021_10_08_012858) do

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

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "pass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registered_items", force: :cascade do |t|
    t.string "pass"
    t.string "shopname"
    t.string "shoptel"
    t.string "yomi"
    t.string "addres1"
    t.string "addres2"
    t.string "area"
    t.string "paidmember"
    t.string "mail"
    t.string "name"
    t.string "tel"
    t.string "station"
    t.string "onfoot"
    t.string "businessday"
    t.string "businesstime1"
    t.string "businesstime2"
    t.string "pricelist"
    t.string "topphoto"
    t.string "agegroup"
    t.string "reservation"
    t.boolean "freeicon1"
    t.boolean "freeicon2"
    t.boolean "freeicon3"
    t.boolean "freeicon4"
    t.boolean "freeicon5"
    t.boolean "freeicon6"
    t.boolean "freeicon11"
    t.boolean "freeicon12"
    t.boolean "freeicon13"
    t.boolean "freeicon14"
    t.boolean "freeicon15"
    t.boolean "freeicon16"
    t.boolean "freeicon21"
    t.boolean "freeicon22"
    t.boolean "freeicon23"
    t.boolean "freeicon24"
    t.boolean "freeicon25"
    t.boolean "freeicon26"
    t.boolean "freeicon27"
    t.boolean "paidicon1"
    t.boolean "paidicon2"
    t.boolean "paidicon3"
    t.boolean "paidicon4"
    t.string "topcomment"
    t.string "comment"
    t.string "photo1"
    t.string "photo2"
    t.string "tablenum"
    t.string "tabletype"
    t.string "service"
    t.string "system"
    t.string "ratio"
    t.string "rule"
    t.string "timeup"
    t.string "homepage1"
    t.string "homepage2"
    t.string "homepage3"
    t.string "homepage4"
    t.string "opening"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "userid"
  end

  create_table "senders", force: :cascade do |t|
    t.integer "category"
    t.string "shopname"
    t.string "yomi"
    t.string "tel1"
    t.string "tel2"
    t.string "tel3"
    t.string "area"
    t.string "addres"
    t.string "charge"
    t.string "tel4"
    t.string "tel5"
    t.string "tel6"
    t.string "chargemail"
    t.string "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.integer "userid"
    t.string "pass"
    t.string "shopname"
    t.string "shoptel"
    t.string "yomi"
    t.string "addres1"
    t.string "addres2"
    t.string "area"
    t.string "paidmember"
    t.string "mail"
    t.string "name"
    t.string "tel"
    t.string "station"
    t.string "onfoot"
    t.string "businessday"
    t.string "businesstime1"
    t.string "businesstime2"
    t.string "pricelist"
    t.string "topphoto"
    t.string "agegroup"
    t.string "reservation"
    t.boolean "freeicon1"
    t.boolean "freeicon2"
    t.boolean "freeicon3"
    t.boolean "freeicon4"
    t.boolean "freeicon5"
    t.boolean "freeicon6"
    t.boolean "freeicon11"
    t.boolean "freeicon12"
    t.boolean "freeicon13"
    t.boolean "freeicon14"
    t.boolean "freeicon15"
    t.boolean "freeicon16"
    t.boolean "freeicon21"
    t.boolean "freeicon22"
    t.boolean "freeicon23"
    t.boolean "freeicon24"
    t.boolean "freeicon25"
    t.boolean "freeicon26"
    t.boolean "freeicon27"
    t.boolean "paidicon1"
    t.boolean "paidicon2"
    t.boolean "paidicon3"
    t.boolean "paidicon4"
    t.string "topcomment"
    t.string "comment"
    t.string "photo1"
    t.string "photo2"
    t.string "tablenum"
    t.string "tabletype"
    t.string "service"
    t.string "system"
    t.string "ratio"
    t.string "rule"
    t.string "timeup"
    t.string "homepage1"
    t.string "homepage2"
    t.string "homepage3"
    t.string "homepage4"
    t.string "opening"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
