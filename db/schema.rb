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

ActiveRecord::Schema.define(version: 2020_03_04_105607) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "applications", force: :cascade do |t|
    t.bigint "position_id"
    t.bigint "candidate_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "score"
    t.bigint "recruiter_id"
    t.string "recruiter"
    t.index ["candidate_id"], name: "index_applications_on_candidate_id"
    t.index ["position_id"], name: "index_applications_on_position_id"
    t.index ["recruiter_id"], name: "index_applications_on_recruiter_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.datetime "start_at"
    t.datetime "end_at"
    t.bigint "candidate_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidate_id"], name: "index_appointments_on_candidate_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "candidate_skills", force: :cascade do |t|
    t.bigint "candidate_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["candidate_id"], name: "index_candidate_skills_on_candidate_id"
    t.index ["skill_id"], name: "index_candidate_skills_on_skill_id"
  end

  create_table "candidates", force: :cascade do |t|
    t.string "first_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.string "linkedin"
    t.string "seniority"
  end

  create_table "position_skills", force: :cascade do |t|
    t.bigint "position_id"
    t.bigint "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["position_id"], name: "index_position_skills_on_position_id"
    t.index ["skill_id"], name: "index_position_skills_on_skill_id"
  end

  create_table "positions", force: :cascade do |t|
    t.string "title"
    t.string "company"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "seniority"
    t.text "top_recruiters", default: "--- []\n"
    t.index ["user_id"], name: "index_positions_on_user_id"
  end

  create_table "recruiter_skills", force: :cascade do |t|
    t.bigint "skill_id"
    t.bigint "recruiter_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recruiter_id"], name: "index_recruiter_skills_on_recruiter_id"
    t.index ["skill_id"], name: "index_recruiter_skills_on_skill_id"
  end

  create_table "recruiters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "seniority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.hstore "skills_match"
    t.index ["skills_match"], name: "index_recruiters_on_skills_match", using: :gist
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "applications", "candidates"
  add_foreign_key "applications", "positions"
  add_foreign_key "applications", "recruiters"
  add_foreign_key "appointments", "candidates"
  add_foreign_key "appointments", "users"
  add_foreign_key "candidate_skills", "candidates"
  add_foreign_key "candidate_skills", "skills"
  add_foreign_key "position_skills", "positions"
  add_foreign_key "position_skills", "skills"
  add_foreign_key "positions", "users"
  add_foreign_key "recruiter_skills", "recruiters"
  add_foreign_key "recruiter_skills", "skills"
end
