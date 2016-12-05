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

ActiveRecord::Schema.define(version: 20161106054018) do

  create_table "service_addresses", force: :cascade do |t|
    t.string  "address_line1",     null: false
    t.string  "address_line2"
    t.integer "address_zip"
    t.string  "address_city"
    t.string  "address_state"
    t.string  "address_country"
    t.decimal "address_lattitute"
    t.decimal "address_longitude"
  end

  create_table "service_categories", force: :cascade do |t|
    t.string "service_name",        null: false
    t.string "service_information"
    t.string "service_status",      null: false
  end

  create_table "service_completed", force: :cascade do |t|
    t.integer "service_users_id",    null: false
    t.integer "service_services_id", null: false
    t.string  "completed"
    t.index ["service_services_id"], name: "index_service_completed_on_service_services_id"
    t.index ["service_users_id"], name: "index_service_completed_on_service_users_id"
  end

  create_table "service_privileges", force: :cascade do |t|
    t.integer "service_roles_id",      null: false
    t.string  "privilege_name",        null: false
    t.string  "privilage_description"
    t.index ["service_roles_id"], name: "index_service_privileges_on_service_roles_id"
  end

  create_table "service_reviews", force: :cascade do |t|
    t.integer "service_users_id",    null: false
    t.integer "service_services_id", null: false
    t.string  "review_info"
    t.integer "review_rating"
    t.index ["service_services_id"], name: "index_service_reviews_on_service_services_id"
    t.index ["service_users_id"], name: "index_service_reviews_on_service_users_id"
  end

  create_table "service_roles", force: :cascade do |t|
    t.string "role_name",        null: false
    t.string "role_description"
  end

  create_table "service_services", force: :cascade do |t|
    t.integer "service_categories_id", null: false
    t.integer "service_users_id",      null: false
    t.decimal "service_price"
    t.string  "service_status",        null: false
    t.string  "service_description"
    t.index ["service_categories_id"], name: "index_service_services_on_service_categories_id"
    t.index ["service_users_id"], name: "index_service_services_on_service_users_id"
  end

  create_table "service_users", force: :cascade do |t|
    t.string   "user_name",            null: false
    t.string   "user_password",        null: false
    t.string   "user_firstname",       null: false
    t.string   "user_lastname",        null: false
    t.string   "user_phone"
    t.string   "user_email",           null: false
    t.text     "user_info"
    t.string   "user_status"
    t.integer  "service_roles_id"
    t.integer  "service_addresses_id"
    t.string   "user_session_token"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["service_addresses_id"], name: "index_service_users_on_service_addresses_id"
    t.index ["service_roles_id"], name: "index_service_users_on_service_roles_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "name"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
