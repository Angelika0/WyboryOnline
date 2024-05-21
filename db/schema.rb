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

ActiveRecord::Schema[7.1].define(version: 2024_05_21_183630) do
  create_table "kandydat_wybories", force: :cascade do |t|
    t.integer "id_kandydata"
    t.integer "id_wyborow"
    t.integer "ilosc_glosow"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kandydats", force: :cascade do |t|
    t.integer "id_partii"
    t.string "imie"
    t.string "nazwisko"
    t.integer "rok_urodzenia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "partie", force: :cascade do |t|
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
  end

  create_table "wyborcas", force: :cascade do |t|
    t.string "imie"
    t.string "nazwisko"
    t.string "numer_tel"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "wybories", force: :cascade do |t|
    t.integer "id_typu_wyborow"
    t.datetime "data_rozpoczecia"
    t.datetime "data_zakonczenia"
    t.text "kryteria_glosowania"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
