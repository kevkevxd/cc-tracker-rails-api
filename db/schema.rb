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

ActiveRecord::Schema.define(version: 2020_09_06_033803) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "credit_cards", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.integer "annual_fee"
    t.string "approval_date"
    t.integer "bonus_amount"
    t.integer "bonus_spend"
    t.string "bonus_month_period"
    t.integer "percentage_earn"
    t.string "earn_description"
    t.integer "category"
    t.string "bank_name"
    t.boolean "insurance"
    t.boolean "price_protection"
    t.boolean "return_protection"
    t.boolean "extended_warranty"
    t.boolean "travel_credit"
    t.boolean "global_entry"
    t.boolean "lounge_access"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "accrued_points"
    t.integer "accrued_cash"
    t.date "point_expirations"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
