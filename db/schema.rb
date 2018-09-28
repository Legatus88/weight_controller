ActiveRecord::Schema.define(version: 2018_09_21_225655) do

  create_table "records", force: :cascade do |t|
    t.float "weight"
    t.date "record_date"
  end

end
