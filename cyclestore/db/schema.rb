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

ActiveRecord::Schema.define(:version => 20121213235219) do

  create_table "boys", :force => true do |t|
    t.string   "product_name"
    t.string   "cycle_weight"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "girls", :force => true do |t|
    t.string   "product_name"
    t.string   "cycle_weight"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "kids", :force => true do |t|
    t.string   "products_name"
    t.string   "cycle_weight"
    t.text     "description"
    t.string   "image_url"
    t.decimal  "price"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "tweets", :force => true do |t|
    t.string   "tweet_content"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end