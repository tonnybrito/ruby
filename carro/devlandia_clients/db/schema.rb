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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160616151633) do

  create_table "customers", force: :cascade do |t|
    t.string   "contact_name",                     limit: 255
    t.string   "email",                            limit: 255
    t.string   "company",                          limit: 255
    t.text     "sector",                           limit: 65535
    t.date     "contact_date"
    t.text     "project",                          limit: 65535
    t.text     "project_language",                 limit: 65535
    t.text     "project_description",              limit: 65535
    t.integer  "calc_hours",                       limit: 4
    t.integer  "project_partial_value",            limit: 4
    t.date     "analysis_contract"
    t.date     "contract_conclusion"
    t.text     "project_prevision",                limit: 65535
    t.text     "changed_in_project",               limit: 65535
    t.text     "new_calcs_project",                limit: 65535
    t.date     "project_prev_conclusion_new_date"
    t.integer  "new_values_project",               limit: 4
    t.date     "project_completion_and_delivery"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

end
