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

ActiveRecord::Schema.define(version: 20171204085420) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "diplomas", force: :cascade do |t|
    t.string   "name"
    t.string   "diploma_type"
    t.string   "discipline"
    t.string   "program_website"
    t.string   "country"
    t.string   "city"
    t.string   "university"
    t.integer  "tution_fees"
    t.string   "tution_fees_period"
    t.integer  "degree_length"
    t.string   "degree_length_period"
    t.string   "delivery_mode"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "google_sheets_id"
    t.string   "diploma_photo"
  end

  create_table "packs", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.text     "description"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "price_cents", default: 0,  null: false
    t.string   "sku"
    t.string   "features",    default: [],              array: true
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "tracking_status", default: "Pending"
    t.string   "payment_status",  default: "Unpaid"
    t.datetime "skype_meeting"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "user_id"
    t.integer  "pack_id"
    t.string   "pack_sku"
    t.integer  "amount_cents",    default: 0,         null: false
    t.json     "payment"
    t.index ["pack_id"], name: "index_reservations_on_pack_id", using: :btree
    t.index ["user_id"], name: "index_reservations_on_user_id", using: :btree
  end

  create_table "suggestions", force: :cascade do |t|
    t.integer  "diploma_one_id"
    t.integer  "diploma_two_id"
    t.integer  "diploma_three_id"
    t.integer  "diploma_four_id"
    t.integer  "diploma_five_id"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.integer  "user_id"
    t.string   "status",           default: "unotified"
    t.index ["user_id"], name: "index_suggestions_on_user_id", using: :btree
  end

  create_table "user_data", force: :cascade do |t|
    t.string   "phone_number"
    t.string   "birthday"
    t.string   "study_level"
    t.string   "specialisation"
    t.string   "user_diploma"
    t.string   "description"
    t.string   "favourite_pays"
    t.string   "budget"
    t.string   "passport_file_name"
    t.string   "passport_content_type"
    t.integer  "passport_file_size"
    t.datetime "passport_updated_at"
    t.string   "resume_file_name"
    t.string   "resume_content_type"
    t.integer  "resume_file_size"
    t.datetime "resume_updated_at"
    t.string   "motivation_letter_file_name"
    t.string   "motivation_letter_content_type"
    t.integer  "motivation_letter_file_size"
    t.datetime "motivation_letter_updated_at"
    t.string   "marks_file_name"
    t.string   "marks_content_type"
    t.integer  "marks_file_size"
    t.datetime "marks_updated_at"
    t.string   "others_file_name"
    t.string   "others_content_type"
    t.integer  "others_file_size"
    t.datetime "others_updated_at"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "other_study_level"
    t.string   "other_specialisation"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_user_data_on_user_id", using: :btree
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
    t.string   "provider"
    t.string   "uid"
    t.string   "facebook_picture_url"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "token"
    t.datetime "token_expiry"
    t.boolean  "admin",                  default: false
    t.string   "profile_pic"
    t.integer  "paid_amount",            default: 0
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "reservations", "packs"
  add_foreign_key "reservations", "users"
  add_foreign_key "suggestions", "users"
end
