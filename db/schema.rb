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

ActiveRecord::Schema.define(:version => 20110316102327) do

  create_table "floors", :force => true do |t|
    t.string   "floor_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "frequencies", :force => true do |t|
    t.string   "frequency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movementfroms", :force => true do |t|
    t.string   "move_from"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movementtos", :force => true do |t|
    t.string   "move_to"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "robots", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedulers", :force => true do |t|
    t.string   "shop_floor"
    t.string   "robot"
    t.string   "move_from"
    t.string   "move_to"
    t.string   "frequency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
