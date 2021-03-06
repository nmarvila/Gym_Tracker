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

ActiveRecord::Schema.define(version: 20160507205447) do

  create_table "avaliacoes", force: :cascade do |t|
    t.float    "peso"
    t.float    "altura"
    t.float    "percentualGordura"
    t.float    "imc"
    t.integer  "cliente_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "avaliacoes", ["cliente_id"], name: "index_avaliacoes_on_cliente_id"

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.date     "dataNascimento"
    t.string   "rg"
    t.string   "cpf"
    t.string   "telefone"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "login"
    t.string   "senha"
  end

  create_table "exercicio_series", force: :cascade do |t|
    t.integer  "serie_id"
    t.integer  "exercicio_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "exercicio_series", ["exercicio_id"], name: "index_exercicio_series_on_exercicio_id"
  add_index "exercicio_series", ["serie_id"], name: "index_exercicio_series_on_serie_id"

  create_table "exercicios", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series", force: :cascade do |t|
    t.string   "nome"
    t.string   "duracao"
    t.integer  "cliente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "series", ["cliente_id"], name: "index_series_on_cliente_id"

end
