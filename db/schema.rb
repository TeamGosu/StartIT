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

ActiveRecord::Schema.define(:version => 20131011015319) do

  create_table "bookings", :force => true do |t|
    t.integer  "customerid"
    t.integer  "trainingid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "homephone"
    t.string   "workphone"
    t.string   "mobilephone"
    t.string   "email"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
  end

  create_table "fbusers", :force => true do |t|
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "user",             :limit => nil
    t.string   "provider",         :limit => nil
  end

  create_table "identities", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "logins", :force => true do |t|
    t.string   "user"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "productquantities", :force => true do |t|
    t.integer  "purchasesid"
    t.integer  "quantity"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "productname"
    t.string   "productprice"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "purchases", :force => true do |t|
    t.integer  "productquantityid"
    t.integer  "customerid"
    t.string   "purchasedate"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "trainings", :force => true do |t|
    t.integer  "bookingid"
    t.string   "date"
    t.string   "time"
    t.string   "coursename"
    t.text     "coursedescription"
    t.string   "region"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "userbookings", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "FName"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
