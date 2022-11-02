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

ActiveRecord::Schema.define(version: 2022_11_02_145613) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "address_type"
    t.string "status"
    t.string "entity"
    t.string "number_and_street"
    t.string "suite_appartment"
    t.string "city"
    t.string "postal_code"
    t.string "country"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "building_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "key"
    t.string "value"
    t.bigint "building_id"
    t.index ["building_id"], name: "index_building_details_on_building_id"
  end

  create_table "buildings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "customerID"
    t.string "buildingAddress"
    t.string "adminFullName"
    t.string "adminEmail"
    t.string "adminPhoneNumber"
    t.string "technicalContactFullName"
    t.string "technicalContactEmail"
    t.string "technicalContactPhoneNumber"
  end

  create_table "customers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "customers_creation_date"
    t.string "company_name"
    t.string "fullname_company_contact"
    t.string "company_contact_phone"
    t.string "email_company_contact"
    t.string "Company_description"
    t.string "fullname_service_technical_authority"
    t.string "technical_authority_phone_service"
    t.string "technical_manager"
    t.string "_email_service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "elevators", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "serial_number"
    t.string "model"
    t.string "type"
    t.string "status"
    t.date "date_commissioning"
    t.date "date_last_inspection"
    t.string "certificate_inspection"
    t.string "information"
    t.text "notes"
  end

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.string "title"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "leads", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "full_name_contact"
    t.string "company_name"
    t.string "email"
    t.string "phone"
    t.string "project_name"
    t.text "project_description"
    t.string "department_elevator"
    t.text "message"
    t.date "date_contact_request"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.binary "attached_file"
  end

  create_table "quotes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "building_type"
    t.string "number_apartments"
    t.string "number_floors_residential"
    t.string "number_basements_residential"
    t.string "number_distinct_businesses_commercial"
    t.string "number_floors_commercial"
    t.string "number_basements_commercial"
    t.string "number_parking_commercial"
    t.string "number_elevators"
    t.string "number_separate_companies"
    t.string "number_floors_corporate"
    t.string "number_basements_corporate"
    t.string "number_parking_corporate"
    t.string "max_number_occupants_floor_corporate"
    t.string "number_distinct_businesses_hybrid"
    t.string "number_floors_hybrid"
    t.string "number_basements_hybrid"
    t.string "number_parking_hybrid"
    t.string "max_number_occupants_floor_hybrid"
    t.string "number_hours_activity"
    t.string "product_line"
    t.integer "elevator_need"
    t.string "unit_price"
    t.string "total_price"
    t.string "installation_fees"
    t.string "final_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb3", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "building_details", "buildings"
  add_foreign_key "employees", "users"
end
