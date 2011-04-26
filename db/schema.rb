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

ActiveRecord::Schema.define(:version => 20110426195309) do

  create_table "milestones", :force => true do |t|
    t.string   "created_by"
    t.text     "description"
    t.date     "due_date"
    t.boolean  "is_completed"
    t.integer  "release_level"
    t.text     "release_notes"
    t.string   "space_id"
    t.string   "title"
    t.string   "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "remote_created_at"
    t.date     "remote_updated_at"
  end

  create_table "tickets", :force => true do |t|
    t.string   "assigned_to_id"
    t.integer  "component_id"
    t.boolean  "from_support"
    t.integer  "importance"
    t.integer  "notification_list"
    t.integer  "number"
    t.integer  "priority"
    t.string   "reporter_id"
    t.string   "space_id"
    t.integer  "status"
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "remote_created_at"
    t.date     "remote_updated_at"
  end

end
