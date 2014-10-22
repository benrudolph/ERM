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

ActiveRecord::Schema.define(:version => 20141022143842) do

  create_table "categories", :force => true do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "label"
    t.text     "description"
    t.integer  "order"
    t.integer  "risk_detail_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "category_headings", :force => true do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "label"
    t.text     "description"
    t.integer  "order"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "escalations", :force => true do |t|
    t.datetime "date"
    t.text     "text"
    t.boolean  "accepted"
    t.integer  "risk_id"
    t.integer  "from_unit_id"
    t.integer  "to_unit_id"
    t.integer  "from_user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "impacts", :force => true do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "label"
    t.text     "description"
    t.integer  "order"
    t.integer  "risk_detail_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "likelihoods", :force => true do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "label"
    t.text     "description"
    t.integer  "order"
    t.integer  "risk_detail_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "risk_details", :force => true do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "change_reason"
    t.text     "cause"
    t.text     "event"
    t.text     "consequences"
    t.boolean  "closed"
    t.text     "comments"
    t.integer  "editor_id"
    t.integer  "owner_id"
    t.integer  "likelihood_id"
    t.integer  "impact_id"
    t.integer  "category_id"
    t.integer  "risk_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "risks", :force => true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.integer  "unit_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "severities", :force => true do |t|
    t.integer  "weight"
    t.string   "color"
    t.integer  "likelihood_id"
    t.integer  "impact_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "treatments", :force => true do |t|
    t.boolean  "proactive"
    t.text     "text"
    t.datetime "target_date"
    t.integer  "risk_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "unit_types", :force => true do |t|
    t.string   "unit_type"
    t.integer  "unit_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "units", :force => true do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "name"
    t.string   "code"
    t.integer  "sub_unit_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
