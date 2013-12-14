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

ActiveRecord::Schema.define(:version => 20131214175641) do

  create_table "bios", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.text     "bio_content"
    t.string   "graduation_year"
    t.string   "height"
    t.string   "weight"
    t.string   "sprint_40_time"
    t.string   "vertical_jump"
    t.string   "bench_press"
    t.string   "squat"
    t.string   "GPA"
    t.string   "SAT_score"
    t.string   "ACT_score"
    t.string   "college_credits_earned"
    t.string   "image_link"
    t.string   "school_name"
    t.string   "school_url"
    t.string   "school_street"
    t.string   "school_city"
    t.string   "school_state"
    t.string   "school_zip"
    t.string   "team_head_coach"
    t.string   "team_head_coach_phone"
    t.string   "team_head_coach_email"
    t.string   "team_special_teams_coach"
    t.string   "primary_kicking_coach"
    t.boolean  "clearing_house_cleared"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "field_goals", :force => true do |t|
    t.date     "date"
    t.integer  "distance"
    t.boolean  "is_good"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "highlights", :force => true do |t|
    t.date     "date"
    t.string   "title"
    t.string   "opponent"
    t.string   "link"
    t.text     "comments"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "image_sliders", :force => true do |t|
    t.string   "image_link"
    t.string   "alt_tag"
    t.string   "caption"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "kickoffs", :force => true do |t|
    t.date     "date"
    t.integer  "distance"
    t.string   "hangtime"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "point_after_attempts", :force => true do |t|
    t.date     "date"
    t.boolean  "is_good"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "punts", :force => true do |t|
    t.date     "date"
    t.integer  "distance"
    t.string   "hangtime"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
