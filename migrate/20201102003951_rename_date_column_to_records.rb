class RenameDateColumnToRecords < ActiveRecord::Migration[5.2]
  def change
    rename_column:records, :date, :start_time
  end

end
