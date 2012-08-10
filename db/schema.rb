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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120801220209) do

  create_table "cautelas", :force => true do |t|
    t.datetime "data_inicio"
    t.datetime "data_termino"
    t.integer  "policial_id"
    t.integer  "item_id"
    t.text     "observacao"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "cautelas", ["item_id"], :name => "index_cautelas_on_item_id"
  add_index "cautelas", ["policial_id"], :name => "index_cautelas_on_policial_id"

  create_table "indicativos", :force => true do |t|
    t.string   "descricao"
    t.string   "lote"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "numero"
    t.integer  "indicativo_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "items", ["indicativo_id"], :name => "index_items_on_indicativo_id"

  create_table "policials", :force => true do |t|
    t.string   "cpf"
    t.string   "nome"
    t.string   "nome_guerra"
    t.integer  "matricula"
    t.date     "nascimento"
    t.string   "email"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "veiculos", :force => true do |t|
    t.string   "placa"
    t.string   "modelo"
    t.string   "cor"
    t.integer  "policial_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "veiculos", ["policial_id"], :name => "index_veiculos_on_policial_id"

  create_table "viaturas", :force => true do |t|
    t.string   "placa"
    t.string   "prefixo"
    t.integer  "ano"
    t.string   "modelo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
