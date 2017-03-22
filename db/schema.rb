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

ActiveRecord::Schema.define(version: 20170322021024) do

  create_table "contributions", force: :cascade do |t|
    t.string   "name"
    t.decimal  "balance"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "employee_id"
    t.index ["employee_id"], name: "index_contributions_on_employee_id"
  end

  create_table "deposit_contributions", force: :cascade do |t|
    t.date     "date_at"
    t.decimal  "amount"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deposit_savings", force: :cascade do |t|
    t.date     "date_at"
    t.decimal  "amount"
    t.string   "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "primary_email"
    t.string   "secondary_email"
    t.date     "birth_at"
    t.date     "start_at"
    t.string   "user"
    t.text     "password_digest"
    t.string   "tipo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "loans", force: :cascade do |t|
    t.date     "Date_at"
    t.decimal  "amount"
    t.decimal  "balance"
    t.string   "tipo"
    t.integer  "periods"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.date     "date_at"
    t.decimal  "amount"
    t.decimal  "interest_paid"
    t.decimal  "capital_paid"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "savings", force: :cascade do |t|
    t.string   "name"
    t.decimal  "balance"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "employee_id"
    t.index ["employee_id"], name: "index_savings_on_employee_id"
  end

end
