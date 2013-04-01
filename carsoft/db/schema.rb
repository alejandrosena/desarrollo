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

ActiveRecord::Schema.define(:version => 20130327182835) do

  create_table "answers", :force => true do |t|
    t.string   "answer"
    t.string   "letter"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "answers", ["question_id"], :name => "index_answers_on_question_id"

  create_table "areas", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "center_programs", :force => true do |t|
    t.integer  "center_id"
    t.integer  "user_id"
    t.integer  "program_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "center_programs", ["center_id"], :name => "index_center_programs_on_center_id"
  add_index "center_programs", ["program_id"], :name => "index_center_programs_on_program_id"
  add_index "center_programs", ["user_id"], :name => "index_center_programs_on_user_id"

  create_table "centers", :force => true do |t|
    t.string   "name"
    t.integer  "code_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "centers", ["code_id"], :name => "index_centers_on_code_id"

  create_table "chips", :force => true do |t|
    t.string   "code"
    t.integer  "program_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "chips", ["program_id"], :name => "index_chips_on_program_id"

  create_table "codes", :force => true do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "documents", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "materials", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "type_material_id"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "materials", ["type_material_id"], :name => "index_materials_on_type_material_id"
  add_index "materials", ["user_id"], :name => "index_materials_on_user_id"

  create_table "parkings", :force => true do |t|
    t.integer  "espace_available"
    t.integer  "location"
    t.string   "acronym"
    t.integer  "area_id"
    t.integer  "vehicle_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "parkings", ["area_id"], :name => "index_parkings_on_area_id"
  add_index "parkings", ["vehicle_id"], :name => "index_parkings_on_vehicle_id"

  create_table "porters", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "address"
    t.string   "phone"
    t.integer  "turn_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "porters", ["turn_id"], :name => "index_porters_on_turn_id"

  create_table "programs", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "registers", :force => true do |t|
    t.date     "date"
    t.time     "time"
    t.integer  "amount"
    t.boolean  "movement"
    t.string   "destination"
    t.string   "procedensia"
    t.string   "center"
    t.integer  "vehicle_id"
    t.integer  "porter_id"
    t.integer  "material_id"
    t.integer  "user_id"
    t.integer  "team_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "registers", ["material_id"], :name => "index_registers_on_material_id"
  add_index "registers", ["porter_id"], :name => "index_registers_on_porter_id"
  add_index "registers", ["team_id"], :name => "index_registers_on_team_id"
  add_index "registers", ["user_id"], :name => "index_registers_on_user_id"
  add_index "registers", ["vehicle_id"], :name => "index_registers_on_vehicle_id"

  create_table "results", :force => true do |t|
    t.integer  "answer_id"
    t.integer  "question_id"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "results", ["answer_id"], :name => "index_results_on_answer_id"
  add_index "results", ["question_id"], :name => "index_results_on_question_id"
  add_index "results", ["user_id"], :name => "index_results_on_user_id"

  create_table "rhs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "type"
    t.string   "brand"
    t.string   "serial"
    t.string   "description"
    t.integer  "porter_id"
    t.integer  "user_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "teams", ["porter_id"], :name => "index_teams_on_porter_id"
  add_index "teams", ["user_id"], :name => "index_teams_on_user_id"

  create_table "turns", :force => true do |t|
    t.date     "entry"
    t.date     "exit"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "type_materials", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "type_users", :force => true do |t|
    t.string   "name"
    t.string   "acronyms"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "type_vehicles", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "confirm_password"
    t.string   "identification"
    t.string   "name"
    t.boolean  "male"
    t.boolean  "female"
    t.string   "phone"
    t.string   "movil"
    t.string   "location"
    t.integer  "document_id"
    t.integer  "rh_id"
    t.integer  "role_id"
    t.integer  "type_user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "users", ["document_id"], :name => "index_users_on_document_id"
  add_index "users", ["rh_id"], :name => "index_users_on_rh_id"
  add_index "users", ["role_id"], :name => "index_users_on_role_id"
  add_index "users", ["type_user_id"], :name => "index_users_on_type_user_id"

  create_table "vehicles", :force => true do |t|
    t.string   "plate"
    t.string   "color"
    t.string   "brand"
    t.string   "model"
    t.integer  "type_vhicle_id"
    t.integer  "user_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "vehicles", ["type_vhicle_id"], :name => "index_vehicles_on_type_vhicle_id"
  add_index "vehicles", ["user_id"], :name => "index_vehicles_on_user_id"

end
