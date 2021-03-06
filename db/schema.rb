# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_02_26_213505) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.integer "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "appointments", force: :cascade do |t|
    t.integer "employee_id"
    t.integer "owner_id"
    t.integer "breed_id"
    t.string "notes"
  end

  create_table "breeds", force: :cascade do |t|
    t.string "name"
    t.string "hair_length"
    t.string "temperment"
    t.string "height"
    t.string "weight"
    t.string "notes"
    t.string "group", default: "Toy Group"
    t.string "dogs_name"
    t.integer "employee_id"
  end

  create_table "breeds_employees", id: false, force: :cascade do |t|
    t.integer "breed_id", null: false
    t.integer "employee_id", null: false
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["breed_id", "employee_id"], name: "index_breeds_employees_on_breed_id_and_employee_id"
    t.index ["employee_id", "breed_id"], name: "index_breeds_employees_on_employee_id_and_breed_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "bio"
    t.string "title"
    t.integer "appointment_id"
    t.string "breed_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "password_confirmation"
    t.string "password_digest"
    t.string "email"
    t.string "telephone"
    t.string "email_confirmation"
    t.boolean "other_dogs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "comments"
    t.integer "appointment_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
