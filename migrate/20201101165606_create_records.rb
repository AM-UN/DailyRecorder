class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :content
      t.date :date
      t.timestamps
    end
  end
end
