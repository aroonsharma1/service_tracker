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

ActiveRecord::Schema.define(:version => 20130821204233) do

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
    t.string   "title"
    t.boolean  "done"
    t.string   "time"
    t.string   "date"
    t.integer  "request_form_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "request_forms", :force => true do |t|
    t.integer  "engine_oil_change"
    t.integer  "gear_oil_change"
    t.integer  "check_spark_plug"
    t.integer  "valve_adjustment"
    t.integer  "check_oil_screen"
    t.integer  "tighten_rear_brake"
    t.integer  "change_spark_plug"
    t.integer  "check_air_filter"
    t.integer  "new_fuel_filter"
    t.integer  "new_transmission_belt"
    t.integer  "new_transmission_weights"
    t.integer  "clean_clutches"
    t.integer  "new_rear_brake"
    t.integer  "replace_brake_fluild"
    t.integer  "grease_front_axel"
    t.integer  "stator"
    t.integer  "CDI"
    t.integer  "coil"
    t.integer  "spark"
    t.integer  "regulator"
    t.integer  "solenoid"
    t.integer  "gauges"
    t.integer  "wires"
    t.integer  "carb"
    t.integer  "fuel_line"
    t.integer  "jets"
    t.integer  "choke"
    t.integer  "fuel_filter"
    t.integer  "fuel_pump"
    t.integer  "light_bulb"
    t.integer  "body_panels"
    t.integer  "oil"
    t.integer  "chemicals"
    t.integer  "other1"
    t.integer  "other2"
    t.integer  "other3"
    t.integer  "other4"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.integer  "service_request_id"
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
