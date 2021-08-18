# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_18_183630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "appointments", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "professional_id", null: false
    t.string "status"
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "sub_service_id"
    t.index ["customer_id"], name: "index_appointments_on_customer_id"
    t.index ["professional_id"], name: "index_appointments_on_professional_id"
    t.index ["sub_service_id"], name: "index_appointments_on_sub_service_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "professional_id", null: false
    t.integer "calification"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_reviews_on_customer_id"
    t.index ["professional_id"], name: "index_reviews_on_professional_id"
  end

  create_table "services", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "category"
  end

  create_table "specialities", force: :cascade do |t|
    t.bigint "professional_id", null: false
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "sub_service_id"
    t.index ["professional_id"], name: "index_specialities_on_professional_id"
    t.index ["sub_service_id"], name: "index_specialities_on_sub_service_id"
  end

  create_table "sub_services", force: :cascade do |t|
    t.string "sub_category"
    t.integer "price"
    t.bigint "service_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_id"], name: "index_sub_services_on_service_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name"
    t.string "last_name"
    t.date "birthdate"
    t.string "phone_number"
    t.string "address"
    t.float "longitude"
    t.float "latitude"
    t.string "type", default: "Customer"
    t.boolean "certification", default: false, null: false
    t.boolean "background_check", default: false, null: false
    t.text "biography"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "appointments", "users", column: "customer_id"
  add_foreign_key "appointments", "users", column: "professional_id"
  add_foreign_key "reviews", "users", column: "customer_id"
  add_foreign_key "reviews", "users", column: "professional_id"
  add_foreign_key "specialities", "users", column: "professional_id"
  add_foreign_key "sub_services", "services"
end
