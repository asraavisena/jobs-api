class ChangeDateIdToShiftdateId < ActiveRecord::Migration[6.0]
  def change
    rename_column :shiftdatejobs, :date_id, :shiftdate_id
  end
end
