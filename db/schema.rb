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

ActiveRecord::Schema.define(version: 2018_05_27_060910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "zip_codes", comment: "郵便番号", force: :cascade do |t|
    t.integer "address_code", comment: "住所コード"
    t.integer "prefecture_code", comment: "都道府県コード"
    t.integer "city_code", comment: "市区町村コード"
    t.integer "town_code", comment: "町域コード"
    t.string "zip_code", comment: "郵便番号"
    t.boolean "office_flag", comment: "事業所フラグ"
    t.boolean "abolition_flag", comment: "廃止フラグ"
    t.string "prefecture", comment: "都道府県"
    t.string "prefecture_kana", comment: "都道府県カナ"
    t.string "city", comment: "市区町村"
    t.string "city_kana", comment: "市区町村カナ"
    t.string "town", comment: "町域"
    t.string "town_kana", comment: "町域カナ"
    t.string "town_supplement", comment: "町域補足"
    t.string "kyoto_street_name", comment: "京都通り名"
    t.string "section", comment: "字丁目"
    t.string "section_kana", comment: "字丁目カナ"
    t.string "supplement", comment: "補足"
    t.string "office", comment: "事業所名"
    t.string "office_kana", comment: "事業所名カナ"
    t.string "office_address", comment: "事業所住所"
    t.integer "new_address_code", comment: "新住所コード"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["city"], name: "index_zip_codes_on_city"
    t.index ["prefecture"], name: "index_zip_codes_on_prefecture"
    t.index ["town"], name: "index_zip_codes_on_town"
    t.index ["zip_code"], name: "index_zip_codes_on_zip_code"
  end

end
