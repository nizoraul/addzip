class CreateZipCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :zip_codes, comment: "郵便番号" do |t|
      t.integer :address_code,     comment: "住所コード"
      t.integer :prefecture_code,  comment: "都道府県コード"
      t.integer :city_code,        comment: "市区町村コード"
      t.integer :town_code,        comment: "町域コード"
      t.string :zip_code,          comment: "郵便番号"
      t.boolean :office_flag,      comment: "事業所フラグ"
      t.boolean :abolition_flag,   comment: "廃止フラグ"
      t.string :prefecture,       comment: "都道府県"
      t.string :prefecture_kana,  comment: "都道府県カナ"
      t.string :city,              comment: "市区町村"
      t.string :city_kana,         comment: "市区町村カナ"
      t.string :town,              comment: "町域"
      t.string :town_kana,         comment: "町域カナ"
      t.string :town_supplement,   comment: "町域補足"
      t.string :kyoto_street_name, comment: "京都通り名"
      t.string :section,           comment: "字丁目"
      t.string :section_kana,      comment: "字丁目カナ"
      t.string :supplement,        comment: "補足"
      t.string :office,            comment: "事業所名"
      t.string :office_kana,       comment: "事業所名カナ"
      t.string :office_address,    comment: "事業所住所"
      t.integer :new_address_code, comment: "新住所コード"

      t.timestamps
    end

    add_index :zip_codes, :zip_code
    add_index :zip_codes, :prefecture
    add_index :zip_codes, :city
    add_index :zip_codes, :town

  end
end
