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

ActiveRecord::Schema.define(version: 2019_12_02_125529) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.string "service_name", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "articles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "subtitle"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "artists", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "discogsid"
    t.string "artist_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "country_code"
    t.string "image_flag"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formats", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "long_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "media_gradings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "artist_id"
    t.string "image_front"
    t.string "image_back"
    t.string "image_vinyl_a"
    t.string "image_vinyl_b"
    t.string "title"
    t.string "discogsid"
    t.string "serial_no"
    t.string "matrix_a"
    t.string "matrix_b"
    t.integer "year"
    t.bigint "country_id"
    t.bigint "media_grading_id"
    t.bigint "sleeve_grading_id"
    t.bigint "store_id"
    t.bigint "format_id"
    t.bigint "record_company_id"
    t.boolean "inshrink"
    t.boolean "sealed"
    t.boolean "featured"
    t.boolean "double_lp"
    t.boolean "gatefold"
    t.boolean "misprint"
    t.boolean "unofficial"
    t.boolean "original_inner"
    t.boolean "colored"
    t.string "hex_color"
    t.boolean "first_press"
    t.string "notes"
    t.date "buyed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_posts_on_artist_id"
    t.index ["country_id"], name: "index_posts_on_country_id"
    t.index ["format_id"], name: "index_posts_on_format_id"
    t.index ["media_grading_id"], name: "index_posts_on_media_grading_id"
    t.index ["record_company_id"], name: "index_posts_on_record_company_id"
    t.index ["sleeve_grading_id"], name: "index_posts_on_sleeve_grading_id"
    t.index ["store_id"], name: "index_posts_on_store_id"
  end

  create_table "record_companies", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "long_name"
    t.string "image_label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sleeve_gradings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "online"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "posts", "artists"
  add_foreign_key "posts", "countries"
  add_foreign_key "posts", "formats"
  add_foreign_key "posts", "media_gradings"
  add_foreign_key "posts", "record_companies"
  add_foreign_key "posts", "sleeve_gradings"
  add_foreign_key "posts", "stores"
end
