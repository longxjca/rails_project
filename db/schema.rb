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

ActiveRecord::Schema.define(version: 2020_10_08_055928) do

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.string "director"
    t.string "release_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "birth_year"
    t.string "gender"
    t.integer "species_id", null: false
    t.integer "planet_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["planet_id"], name: "index_people_on_planet_id"
    t.index ["species_id"], name: "index_people_on_species_id"
  end

  create_table "person_films", force: :cascade do |t|
    t.integer "person_id", null: false
    t.integer "film_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["film_id"], name: "index_person_films_on_film_id"
    t.index ["person_id"], name: "index_person_films_on_person_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "gravity"
    t.string "population"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "classification"
    t.string "language"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "people", "planets"
  add_foreign_key "people", "species"
  add_foreign_key "person_films", "films"
  add_foreign_key "person_films", "people"
end
