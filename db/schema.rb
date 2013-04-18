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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130418001054) do

  create_table "comments", :force => true do |t|
    t.string   "your_comment"
    t.integer  "traveler_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "travelers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "what_place_did_you_visit"
    t.date     "date_of_your_trip"
    t.integer  "number_of_people_traveling_with_you"
    t.string   "what_transport_did_you_use"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

end
