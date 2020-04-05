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

ActiveRecord::Schema.define(version: 2020_04_05_182923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "employees", force: :cascade do |t|
    t.string "employee_fname"
    t.string "employee_lname"
    t.string "employee_email"
    t.decimal "employee_salary"
    t.date "employee_hiredate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.date "date_updated"
    t.text "invoice_status"
    t.bigint "stlclient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["stlclient_id"], name: "index_invoices_on_stlclient_id"
  end

  create_table "notes", force: :cascade do |t|
    t.text "comment"
    t.date "date_updated"
    t.bigint "invoice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_notes_on_invoice_id"
  end

  create_table "prodcategories", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prodstatuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "product_orders", force: :cascade do |t|
    t.integer "product_quantity"
    t.decimal "product_cost_total"
    t.bigint "product_id", null: false
    t.bigint "invoice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_product_orders_on_invoice_id"
    t.index ["product_id"], name: "index_product_orders_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "product_name"
    t.string "product_description"
    t.decimal "product_cost"
    t.bigint "prodcategory_id", null: false
    t.bigint "prodstatus_id", null: false
    t.date "date_modified"
    t.bigint "supplier_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["prodcategory_id"], name: "index_products_on_prodcategory_id"
    t.index ["prodstatus_id"], name: "index_products_on_prodstatus_id"
    t.index ["supplier_id"], name: "index_products_on_supplier_id"
  end

  create_table "scpaymentinfos", force: :cascade do |t|
    t.text "payment_address"
    t.string "account_name"
    t.integer "account_number"
    t.integer "routing_number"
    t.integer "aba_number"
    t.string "swift_code"
    t.bigint "supporting_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["supporting_company_id"], name: "index_scpaymentinfos_on_supporting_company_id"
  end

  create_table "servcategories", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "service_orders", force: :cascade do |t|
    t.decimal "service_cost_total"
    t.bigint "stlservice_id", null: false
    t.bigint "invoice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_service_orders_on_invoice_id"
    t.index ["stlservice_id"], name: "index_service_orders_on_stlservice_id"
  end

  create_table "servstatuses", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stlclients", force: :cascade do |t|
    t.string "client_fname"
    t.string "client_lname"
    t.string "client_email"
    t.string "client_phonenumber"
    t.string "client_companyname"
    t.string "client_shippingaddress"
    t.string "client_billingaddress"
    t.bigint "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_stlclients_on_employee_id"
  end

  create_table "stlservices", force: :cascade do |t|
    t.string "service_name"
    t.text "service_description"
    t.decimal "service_cost"
    t.bigint "servcategory_id", null: false
    t.bigint "servstatus_id", null: false
    t.date "date_modified"
    t.bigint "supporting_company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["servcategory_id"], name: "index_stlservices_on_servcategory_id"
    t.index ["servstatus_id"], name: "index_stlservices_on_servstatus_id"
    t.index ["supporting_company_id"], name: "index_stlservices_on_supporting_company_id"
  end

  create_table "supplierpaymentinfos", force: :cascade do |t|
    t.text "payment_address"
    t.string "account_name"
    t.integer "account_number"
    t.integer "routing_number"
    t.integer "aba_number"
    t.string "swift_code"
    t.bigint "supplier_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["supplier_id"], name: "index_supplierpaymentinfos_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "supplier_name"
    t.string "supplier_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "supporting_companies", force: :cascade do |t|
    t.string "supportingcomp_name"
    t.string "supportingcomp_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "invoices", "stlclients"
  add_foreign_key "notes", "invoices"
  add_foreign_key "product_orders", "invoices"
  add_foreign_key "product_orders", "products"
  add_foreign_key "products", "prodcategories"
  add_foreign_key "products", "prodstatuses"
  add_foreign_key "products", "suppliers"
  add_foreign_key "scpaymentinfos", "supporting_companies"
  add_foreign_key "service_orders", "invoices"
  add_foreign_key "service_orders", "stlservices"
  add_foreign_key "stlclients", "employees"
  add_foreign_key "stlservices", "servcategories"
  add_foreign_key "stlservices", "servstatuses"
  add_foreign_key "stlservices", "supporting_companies"
  add_foreign_key "supplierpaymentinfos", "suppliers"
end
