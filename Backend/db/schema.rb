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

ActiveRecord::Schema.define(version: 2022_09_15_232017) do

  create_table "apartments", force: :cascade do |t|
    t.integer "price"
    t.string "detail"
    t.string "location"
    t.string "image"
    t.boolean "like"
    t.boolean "is_house"
  end

  create_table "houses", force: :cascade do |t|
    t.integer "price"
    t.string "detail"
    t.string "location"
    t.string "image"
    t.boolean "like"
    t.boolean "is_house"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "like"
    t.integer "owner_id"
    t.integer "house_id"
    t.integer "apartment_id"
  end

end
