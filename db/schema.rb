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

ActiveRecord::Schema.define(version: 20130808015805) do

  create_table "cookies", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.integer  "cupcake_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "image"
  end

  create_table "cupcakes", force: true do |t|
    t.string   "name"
    t.integer  "current_score"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "image"
  end

  create_table "frostings", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.integer  "cupcake_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "image"
  end

  create_table "ice_creams", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.integer  "cupcake_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "image"
  end

  create_table "identities", force: true do |t|
    t.string   "provider"
    t.string   "secret"
    t.string   "uid"
    t.integer  "user_id"
    t.string   "user_name"
    t.datetime "expires_at"
    t.string   "name"
    t.string   "image"
    t.string   "url"
    t.string   "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: true do |t|
    t.string   "mailing_address"
    t.boolean  "payment_made"
    t.string   "phone_number"
    t.date     "delivery_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "shopping_cart_id"
    t.string   "email"
    t.string   "name"
  end

  create_table "product_orders", force: true do |t|
    t.integer  "product_id"
    t.integer  "quantity",   default: 1
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price",      default: 0.99
    t.integer  "order_id"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity"
    t.string   "description"
  end

  create_table "shopping_carts", force: true do |t|
    t.integer  "total_price"
    t.integer  "num_of_items"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "user"
  end

  create_table "toppings", force: true do |t|
    t.string   "name"
    t.string   "color"
    t.integer  "cupcake_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "image"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.boolean  "admin"
    t.integer  "total_score",            default: 0
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "confirmation_token"
    t.string   "unconfirmed_email"
    t.datetime "confirmation_sent_at"
    t.datetime "confirmed_at"
    t.integer  "shopping_cart_id"
    t.text     "address"
    t.string   "phone"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
