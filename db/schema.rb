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

ActiveRecord::Schema.define(version: 20170428232623) do

  create_table "departamentos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fishbones", force: :cascade do |t|
    t.string   "grupo"
    t.integer  "relatorio_id"
    t.string   "causa"
    t.boolean  "relevancia"
    t.text     "acao"
    t.integer  "responsavel_id"
    t.date     "prazo"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "fishbones", ["relatorio_id"], name: "index_fishbones_on_relatorio_id"
  add_index "fishbones", ["responsavel_id"], name: "index_fishbones_on_responsavel_id"

  create_table "relatorios", force: :cascade do |t|
    t.date     "data"
    t.integer  "departamento_id"
    t.integer  "setor_id"
    t.string   "anomalia"
    t.text     "descricao"
    t.text     "acao"
    t.string   "grupodeanalise"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "relatorios", ["departamento_id"], name: "index_relatorios_on_departamento_id"
  add_index "relatorios", ["setor_id"], name: "index_relatorios_on_setor_id"

  create_table "responsaveis", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "setores", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "useres", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "useres", ["email"], name: "index_useres_on_email", unique: true
  add_index "useres", ["reset_password_token"], name: "index_useres_on_reset_password_token", unique: true

end
