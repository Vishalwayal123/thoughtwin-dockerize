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

ActiveRecord::Schema.define(version: 2021_11_02_055951) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_details", force: :cascade do |t|
    t.bigint "account_number"
    t.string "ifsc_code"
    t.string "branch_address"
    t.string "pan_card"
    t.string "aadhar_card"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pan_number"
    t.bigint "aadhar_number"
    t.index ["user_id"], name: "index_account_details_on_user_id"
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.string "subject"
    t.string "question"
    t.text "answer"
    t.string "blogger"
    t.string "blogger_image"
    t.string "blogger_department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "about_blogger"
    t.string "description"
    t.string "name"
    t.integer "user_id"
  end

  create_table "carrers", force: :cascade do |t|
    t.string "title"
    t.string "time_duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "contact_number"
    t.string "email"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guidelines", force: :cascade do |t|
    t.text "description"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meta_contents", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "website"
    t.string "keyword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "page"
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image"
    t.string "side_image"
    t.string "language"
    t.string "web_link"
    t.string "web_type"
    t.integer "admin_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "support_emails", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taggings", force: :cascade do |t|
    t.bigint "tag_id"
    t.bigint "blog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_taggings_on_blog_id"
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "under_team_leaders", force: :cascade do |t|
    t.integer "user_id"
    t.string "department"
    t.integer "employee_id"
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
    t.boolean "is_admin"
    t.boolean "is_portfolio", default: false
    t.boolean "is_carrer", default: false
    t.boolean "is_metatags", default: false
    t.string "username"
    t.string "address"
    t.date "doj"
    t.date "date_of_birth"
    t.string "gender"
    t.bigint "contact_number"
    t.string "father_name"
    t.bigint "father_contact"
    t.string "mother_name"
    t.bigint "mother_contact"
    t.string "present_address"
    t.string "permanent_address"
    t.string "email_primary"
    t.string "blood_group"
    t.string "religion"
    t.string "language_known"
    t.string "martial_status"
    t.bigint "if_yes_spouse_contact_number"
    t.string "profile_image"
    t.string "department"
    t.boolean "is_team_leader"
    t.string "team_leader"
    t.string "role"
    t.string "first_name"
    t.string "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "account_details", "users"
  add_foreign_key "taggings", "blogs"
  add_foreign_key "taggings", "tags"
end
