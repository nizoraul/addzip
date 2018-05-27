class ZipCode < ApplicationRecord
  # 住所.jpから取得したcsvをpostgreSQLのCOPYでインポートするコマンド Herokuの仕様で10000レコード制限があるので全国は取り込めない。
  # COPY zip_codes (address_code, prefecture_code, city_code, town_code, zip_code, office_flag, abolition_flag, prefecture, prefecture_kana, city, city_kana, town, town_kana, town_supplement, kyoto_street_name, section, section_kana, supplement, office, office_kana, office_address, new_address_code, created_at, updated_at) from 'ップ/05akita.csv' WITH csv HEADER;
  # とりあえずお試しで秋田のみ取り込み
  # cp932なのでiconvとかでutf8に変更してから取り込む。
end
