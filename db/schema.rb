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

ActiveRecord::Schema.define(version: 2020_03_05_212343) do

  create_table "activities", force: :cascade do |t|
    t.string "activity"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "city"
    t.string "country"
    t.date "depart_date"
    t.date "return_date"
  end

  create_table "flights", force: :cascade do |t|
    t.integer "tourist_id"
    t.integer "destination_id"
    t.integer "confirmation_num"
  end

  create_table "itineraries", force: :cascade do |t|
    t.integer "destination_id"
    t.integer "activity_id"
  end

  create_table "tourists", force: :cascade do |t|
    t.string "name"
  end

end
