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

ActiveRecord::Schema[8.0].define(version: 2025_04_06_021650) do
  create_table "expenses", force: :cascade do |t|
    t.string "expenseDescription"
    t.decimal "amount"
    t.date "expenseDate"
    t.integer "tripName_id", null: false
    t.integer "payer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payer_id"], name: "index_expenses_on_payer_id"
    t.index ["tripName_id"], name: "index_expenses_on_tripName_id"
  end

  create_table "expenses_participants", id: false, force: :cascade do |t|
    t.integer "expense_id", null: false
    t.integer "participant_id", null: false
  end

  create_table "participants", force: :cascade do |t|
    t.string "participantName"
    t.integer "tripName_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tripName_id"], name: "index_participants_on_tripName_id"
    t.index ["user_id"], name: "index_participants_on_user_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string "tripName"
    t.date "startDate"
    t.date "endDate"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_trips_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
  end
end
