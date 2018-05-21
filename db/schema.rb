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

ActiveRecord::Schema.define(version: 2018_05_21_201622) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phrases", force: :cascade do |t|
    t.text "eng"
    t.text "nor"
    t.bigint "word_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_phrases_on_category_id"
    t.index ["word_id"], name: "index_phrases_on_word_id"
  end

  create_table "words", force: :cascade do |t|
    t.string "eng_si"
    t.string "nor_si"
    t.string "eng_pl"
    t.string "nor_pl"
    t.string "eng_def_si"
    t.string "nor_def_si"
    t.string "eng_def_pl"
    t.string "nor_def_pl"
    t.string "eng_past"
    t.string "nor_past"
    t.string "eng_fut"
    t.string "nor_fut"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_words_on_category_id"
  end

  add_foreign_key "phrases", "categories"
  add_foreign_key "phrases", "words"
  add_foreign_key "words", "categories"
end
