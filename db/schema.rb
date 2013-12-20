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

ActiveRecord::Schema.define(:version => 20131217194818) do

  create_table "categories", :force => true do |t|
    t.string   "category_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "colleges", :force => true do |t|
    t.string   "college_name"
    t.integer  "country_id"
    t.string   "college_location"
    t.string   "college_contact"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "colleges", ["country_id"], :name => "index_colleges_on_country_id"

  create_table "countries", :force => true do |t|
    t.string   "country_name"
    t.text     "visa_detail"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "jobs", :force => true do |t|
    t.integer  "country_id"
    t.integer  "category_id"
    t.integer  "number_of_job"
    t.date     "date"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "jobs", ["category_id"], :name => "index_jobs_on_category_id"
  add_index "jobs", ["country_id"], :name => "index_jobs_on_country_id"

  create_table "livingexpenses", :force => true do |t|
    t.string   "City"
    t.string   "Country_name"
    t.integer  "FoodCost"
    t.integer  "AccomodationCost"
    t.integer  "TransportationCost"
    t.string   "UserID"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "searches", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "specializations", :force => true do |t|
    t.integer  "category_id"
    t.integer  "college_id"
    t.string   "specialization_name"
    t.string   "award_type"
    t.string   "duration"
    t.string   "mode_of_delivery"
    t.string   "fees"
    t.text     "description"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "college_name"
    t.string   "city"
  end

  add_index "specializations", ["category_id"], :name => "index_specializations_on_category_id"
  add_index "specializations", ["college_id"], :name => "index_specializations_on_college_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,     :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "admin",                  :default => false
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
