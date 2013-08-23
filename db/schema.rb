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

ActiveRecord::Schema.define(:version => 20130823003750) do

  create_table "administrators", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "administrators", ["remember_token"], :name => "index_administrators_on_remember_token"

  create_table "request_fields", :force => true do |t|
    t.string   "name"
    t.string   "notes"
    t.string   "date"
    t.string   "time"
    t.boolean  "done"
    t.integer  "service_request_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "service_requests", :force => true do |t|
    t.string   "description"
    t.integer  "status"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "service_request_number"
    t.string   "customer_first_name"
    t.string   "customer_last_name"
    t.string   "customer_email"
    t.string   "remember_token"
  end

end
