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

ActiveRecord::Schema[7.1].define(version: 2024_06_18_224759) do
  create_table "kandydat_wybories", force: :cascade do |t|
    t.integer "kandydat_id", null: false
    t.integer "wybory_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kandydat_id"], name: "index_kandydat_wybories_on_kandydat_id"
    t.index ["wybory_id"], name: "index_kandydat_wybories_on_wybory_id"
  end

  create_table "kandydats", force: :cascade do |t|
    t.integer "partia_id"
    t.string "imie"
    t.string "nazwisko"
    t.integer "rok_urodzenia"
    t.integer "ilosc_glosow"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partias", force: :cascade do |t|
    t.string "nazwa"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "typ_wyborows", force: :cascade do |t|
    t.string "typ"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wyborca_wybories", force: :cascade do |t|
    t.integer "id_wyborcy"
    t.integer "id_wyborow"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "uprawniony", default: false, null: false
  end

  create_table "wyborcas", force: :cascade do |t|
    t.string "imie"
    t.string "nazwisko"
    t.string "numer_tel"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.integer "liczba_glosow", default: 0
  end

  create_table "wybories", force: :cascade do |t|
    t.integer "id_typu_wyborow"
    t.datetime "data_rozpoczecia"
    t.datetime "data_zakonczenia"
    t.text "kryteria_glosowania"
    t.string "tytul"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "max_votes", default: 1
  end

  add_foreign_key "kandydat_wybories", "kandydats"
  add_foreign_key "kandydat_wybories", "wybories"
end
