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

ActiveRecord::Schema.define(version: 2020_11_23_201011) do

  create_table "categories", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "couleurs", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "marques", force: :cascade do |t|
    t.string "nom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "produit_id", null: false
    t.integer "quantite"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "statut_order"
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["produit_id"], name: "index_order_items_on_produit_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "statut_livraison"
    t.integer "statut_order"
    t.integer "type_livraison"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "produits", force: :cascade do |t|
    t.string "nom"
    t.string "description"
    t.string "reference"
    t.integer "marque_id", null: false
    t.integer "category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "prix"
    t.integer "genre_id", null: false
    t.integer "couleur_id", null: false
    t.index ["category_id"], name: "index_produits_on_category_id"
    t.index ["couleur_id"], name: "index_produits_on_couleur_id"
    t.index ["genre_id"], name: "index_produits_on_genre_id"
    t.index ["marque_id"], name: "index_produits_on_marque_id"
  end

  create_table "stocks", force: :cascade do |t|
    t.integer "produit_id", null: false
    t.string "taille"
    t.integer "quantite"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["produit_id"], name: "index_stocks_on_produit_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "admin"
    t.string "nom"
    t.string "prenom"
    t.string "adresse"
    t.string "telephone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "ventes", force: :cascade do |t|
    t.integer "produit_id", null: false
    t.integer "prix"
    t.integer "user_id", null: false
    t.integer "statut_vente"
    t.boolean "remboursement"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["produit_id"], name: "index_ventes_on_produit_id"
    t.index ["user_id"], name: "index_ventes_on_user_id"
  end

  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "produits"
  add_foreign_key "orders", "users"
  add_foreign_key "produits", "categories"
  add_foreign_key "produits", "couleurs"
  add_foreign_key "produits", "genres"
  add_foreign_key "produits", "marques"
  add_foreign_key "stocks", "produits"
  add_foreign_key "ventes", "produits"
  add_foreign_key "ventes", "users"
end
