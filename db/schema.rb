# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100206215034) do

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40,                  :null => false
    t.string   "crypted_password",          :limit => 40,                  :null => false
    t.string   "salt",                      :limit => 40,                  :null => false
    t.string   "remember_token",            :limit => 40,                  :null => false
    t.datetime "remember_token_expires_at",                                :null => false
    t.string   "name",                      :limit => 100, :default => "", :null => false
    t.string   "email",                     :limit => 100,                 :null => false
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
    t.integer  "karma_current",                                            :null => false
    t.integer  "karma_total",                                              :null => false
    t.boolean  "admin?",                                                   :null => false
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

  create_table "winners", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "entry_id",   :null => false
  end

end