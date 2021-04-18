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

ActiveRecord::Schema.define(version: 2021_04_18_082235) do

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
    t.string "pass"
    t.string "shopname"
    t.string "shoptel"
    t.string "yomi"
    t.string "addres1"
    t.string "addres2"
    t.string "area"
    t.boolean "paidmember"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "userid"
    t.string "mail"
    t.string "name"
    t.string "tel"
    t.string "station"
    t.integer "onfoot"
    t.text "businessday"
    t.string "businesstime1"
    t.string "businesstime2"
    t.string "pricelist"
    t.string "topphoto"
    t.string "agegroup"
    t.boolean "reservation"
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
    t.text "topcomment"
    t.text "comment"
    t.string "photo1"
    t.string "photo2"
    t.integer "tablenum"
    t.text "tabletype"
    t.text "service"
    t.text "system"
    t.string "ratio"
    t.text "rule"
    t.string "timeup"
    t.string "homepage1"
    t.string "homepage2"
    t.string "homepage3"
    t.string "homepage4"
    t.date "opening"
    t.string "area2"
  end

end
