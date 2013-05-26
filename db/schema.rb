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

ActiveRecord::Schema.define(:version => 20130526164335) do

  create_table "a_vet_appts", :force => true do |t|
    t.string   "vet_fname"
    t.string   "string"
    t.string   "vet_lname"
    t.string   "vet_date"
    t.string   "vet_fdate"
    t.string   "vet_vacc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dogs", :force => true do |t|
    t.string   "dog_name"
    t.string   "string"
    t.string   "dog_breed"
    t.string   "dog_allergies"
    t.string   "dog_weight"
    t.string   "int"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "grooms", :force => true do |t|
    t.string   "grappt_date"
    t.string   "string"
    t.string   "grappt_futappdate"
    t.string   "grappt_style"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "stylists", :force => true do |t|
    t.string   "style_fname"
    t.string   "string"
    t.string   "stylst_lname"
    t.string   "style_specialty"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "f_name"
    t.string   "string"
    t.string   "l_name"
    t.string   "cust_address"
    t.string   "cust_city"
    t.string   "cust_state"
    t.string   "cust_zip"
    t.string   "integer"
    t.string   "cust_phone"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
