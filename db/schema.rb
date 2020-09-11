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

ActiveRecord::Schema.define(version: 2020_09_08_200532) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "credit_cards", force: :cascade do |t|
    t.string "name"
    t.boolean "is_bookedmarked", default: false, null: false
    t.integer "annual_fee"
    t.string "approval_date", default: "0"
    t.integer "bonus_amount", default: 0
    t.integer "bonus_spend"
    t.string "bonus_month_period"
    t.integer "percentage_earn"
    t.string "earn_description"
    t.integer "category"
    t.string "bank_name"
    t.boolean "insurance", default: false, null: false
    t.boolean "price_protection", default: false, null: false
    t.boolean "return_protection", default: false, null: false
    t.boolean "extended_warranty", default: false, null: false
    t.boolean "travel_credit", default: false, null: false
    t.boolean "global_entry", default: false, null: false
    t.boolean "lounge_access", default: false, null: false
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_credit_cards", force: :cascade do |t|
    t.integer "user_id"
    t.integer "credit_card_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "accrued_points", default: 0
    t.integer "accrued_cash", default: 0
    t.date "point_expirations"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
