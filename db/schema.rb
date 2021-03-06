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

ActiveRecord::Schema.define(version: 20180816112726) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_products", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "category_id", null: false
    t.index ["category_id"], name: "index_categories_products_on_category_id"
    t.index ["product_id"], name: "index_categories_products_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "category_id"
    t.integer "purchase_id"
    t.date "date_product"
    t.index ["category_id"], name: "index_products_on_category_id"
    t.index ["purchase_id"], name: "index_products_on_purchase_id"
  end

  create_table "products_purchases", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "purchase_id", null: false
    t.index ["product_id"], name: "index_products_purchases_on_product_id"
    t.index ["purchase_id"], name: "index_products_purchases_on_purchase_id"
  end

  create_table "purchases", force: :cascade do |t|
    t.string "name_purchases"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
