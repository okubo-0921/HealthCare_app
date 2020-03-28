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

ActiveRecord::Schema.define(version: 2020_03_27_063356) do

  create_table "calendars", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.date "start_date"
    t.date "end_date"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calorie_objs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "calorie_id"
    t.bigint "obj_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["calorie_id"], name: "index_calorie_objs_on_calorie_id"
    t.index ["obj_id"], name: "index_calorie_objs_on_obj_id"
  end

  create_table "calories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "calorie"
    t.integer "calorie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "charts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.integer "weight"
    t.float "BMI"
    t.date "date"
    t.integer "Proper"
    t.integer "length"
    t.integer "metabolism"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "objs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "obj_id"
    t.string "obj"
    t.integer "calorie"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "age", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["name"], name: "index_users_on_name", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "calorie_objs", "calories", column: "calorie_id"
  add_foreign_key "calorie_objs", "objs"
end
