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

ActiveRecord::Schema.define(version: 20170819043121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "category_events", force: :cascade do |t|
    t.string   "name"
    t.integer  "comitee_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_partners", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comitees", force: :cascade do |t|
    t.string   "name"
    t.string   "grade"
    t.integer  "limit"
    t.float    "value_not_cotist"
    t.float    "value_cotist"
    t.datetime "start_date",       null: false
    t.datetime "end_date",         null: false
    t.string   "photo"
    t.string   "string"
    t.integer  "type_event"
    t.text     "description"
    t.integer  "limit_cotist"
    t.string   "question_1"
    t.string   "question_2"
    t.string   "question_3"
    t.string   "question_4"
    t.string   "question_5"
    t.boolean  "dual"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "comitees_users", id: false, force: :cascade do |t|
    t.integer "user_id",    null: false
    t.integer "comitee_id", null: false
  end

  create_table "crew_apresentations", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "photo"
  end

  create_table "crew_big_sonu_comitees", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "crew_big_sonu_schedules", force: :cascade do |t|
    t.text     "activity"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crew_blogs", force: :cascade do |t|
    t.string   "title"
    t.string   "introdution"
    t.text     "description"
    t.string   "photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "crew_diretories", force: :cascade do |t|
    t.string   "name"
    t.string   "photo"
    t.string   "description"
    t.integer  "office_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["office_id"], name: "index_crew_diretories_on_office_id", using: :btree
  end

  create_table "crew_fortalezas", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "photo"
  end

  create_table "crew_muns", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "photo"
  end

  create_table "crew_parties", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "photo"
  end

  create_table "crew_partners", force: :cascade do |t|
    t.string   "name"
    t.string   "photo"
    t.integer  "category_partner_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["category_partner_id"], name: "index_crew_partners_on_category_partner_id", using: :btree
  end

  create_table "crew_schools", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "crew_secretaries", force: :cascade do |t|
    t.string   "office"
    t.string   "name"
    t.text     "description"
    t.string   "photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "office_id"
    t.index ["office_id"], name: "index_crew_secretaries_on_office_id", using: :btree
  end

  create_table "crew_solidaries", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "photo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "crew_stories", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "photo"
  end

  create_table "offices", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.boolean  "is_secretary"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name",                   default: "",    null: false
    t.string   "general_register",       default: "",    null: false
    t.string   "cpf",                    default: "",    null: false
    t.string   "gender",                 default: "",    null: false
    t.date     "birthday"
    t.string   "cep"
    t.string   "state"
    t.text     "adress"
    t.string   "adress_number"
    t.string   "complement"
    t.string   "city"
    t.string   "district"
    t.string   "phone"
    t.string   "cel",                    default: "",    null: false
    t.string   "university",             default: "",    null: false
    t.string   "registration_id"
    t.integer  "semester"
    t.text     "facebook_profile_link",  default: "",    null: false
    t.string   "cpf_dual"
    t.string   "answer_1"
    t.string   "answer_2"
    t.string   "answer_3"
    t.string   "answer_4"
    t.string   "answer_5"
    t.text     "justify"
    t.text     "experience"
    t.string   "face_link"
    t.boolean  "completed"
    t.boolean  "active",                 default: false
    t.integer  "lot_id"
    t.datetime "paid_on"
    t.integer  "room_id"
    t.boolean  "lider_dual",             default: false
    t.datetime "inscription_date"
    t.integer  "comitee_id"
    t.boolean  "is_cotist",              default: false
    t.string   "payment_status"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["general_register", "cpf"], name: "index_users_on_general_register_and_cpf", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "crew_diretories", "offices"
  add_foreign_key "crew_partners", "category_partners"
  add_foreign_key "crew_secretaries", "offices"
end
