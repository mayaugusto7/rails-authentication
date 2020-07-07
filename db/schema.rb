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

ActiveRecord::Schema.define(version: 2020_07_07_150336) do

  create_table "perfil_permissaos", force: :cascade do |t|
    t.integer "perfil_id", null: false
    t.integer "permissao_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["perfil_id"], name: "index_perfil_permissaos_on_perfil_id"
    t.index ["permissao_id"], name: "index_perfil_permissaos_on_permissao_id"
  end

  create_table "perfil_usuarios", force: :cascade do |t|
    t.integer "perfil_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["perfil_id"], name: "index_perfil_usuarios_on_perfil_id"
    t.index ["user_id"], name: "index_perfil_usuarios_on_user_id"
  end

  create_table "perfils", force: :cascade do |t|
    t.string "nome_perfil"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "permissaos", force: :cascade do |t|
    t.string "permissao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "perfil_permissaos", "perfils"
  add_foreign_key "perfil_permissaos", "permissaos"
  add_foreign_key "perfil_usuarios", "perfils"
  add_foreign_key "perfil_usuarios", "users"
end
