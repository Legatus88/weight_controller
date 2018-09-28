class CreateRecordsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.float :weight
      t.date :record_date
    end
  end
end
