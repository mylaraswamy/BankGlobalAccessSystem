# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20141205083125) do

  create_table "banks", force: true do |t|
    t.string   "username"
    t.string   "fathername"
    t.string   "designation"
    t.date     "birthday"
    t.string   "gender"
    t.text     "address"
    t.string   "country"
    t.string   "state"
    t.integer  "pincode"
    t.text     "email"
    t.integer  "phonenumber"
    t.text     "globalaccessid"
    t.text     "partyindex"
    t.string   "bankname"
    t.integer  "accountnumber"
    t.string   "accounttype"
    t.string   "accountavailable"
    t.string   "accountlocation"
    t.string   "accountissued"
    t.integer  "openbalance"
    t.integer  "currentbalance"
    t.integer  "balancelimit"
    t.integer  "cardnumber"
    t.string   "cardtype"
    t.string   "cardavailable"
    t.string   "cardlocation"
    t.integer  "secretcode"
    t.date     "cardissueddate"
    t.date     "cardexpiredate"
    t.integer  "cardlimit"
    t.integer  "chequenumber"
    t.string   "chequeavailable"
    t.string   "chequelocation"
    t.date     "chequeissueddate"
    t.date     "chequeexpiredate"
    t.integer  "chequelimit"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "name"
    t.text     "email"
    t.integer  "phonenumber"
    t.text     "address"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", force: true do |t|
    t.string   "name"
    t.text     "descriptions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transactions", force: true do |t|
    t.text     "globalaccessid"
    t.text     "partyindex"
    t.integer  "fromaccountto"
    t.integer  "toaccount"
    t.string   "sendername"
    t.string   "receivername"
    t.string   "frombank"
    t.string   "tobank"
    t.integer  "senderamount"
    t.integer  "receiveramount"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.text     "address"
    t.integer  "phone_number"
    t.text     "globalaccessid"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
