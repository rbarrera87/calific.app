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

ActiveRecord::Schema.define(version: 20140202035950) do

  create_table "grados", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "grupos", force: true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "fotografia_url"
    t.integer  "numero_control"
    t.string   "contrasena"
    t.date     "fecha_nacimiento"
    t.string   "estado_civil"
    t.string   "sexo"
    t.string   "cp"
    t.string   "curp"
    t.string   "nss"
    t.string   "rfc"
    t.integer  "telefono"
    t.integer  "celular"
    t.string   "correo_electronico"
    t.string   "calle"
    t.string   "numero_exterior"
    t.string   "numero_inteior"
    t.string   "numero_departamento"
    t.string   "referencias"
    t.text     "comentarios"
    t.string   "poblacion"
    t.string   "estado"
    t.text     "situacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "rel_grados_grupos", force: true do |t|
    t.integer  "grado_id"
    t.integer  "grupo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_subjects", force: true do |t|
    t.integer  "user_id"
    t.integer  "subject_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_subjects", ["user_id", "subject_id"], name: "index_user_subjects_on_user_id_and_subject_id", unique: true, using: :btree

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
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "roles_mask",             default: 1
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
