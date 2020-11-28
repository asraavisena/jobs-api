class CreateShiftdatejobs < ActiveRecord::Migration[6.0]
  def change
    create_table :shiftdatejobs do |t|
      t.integer :job_id
      t.integer :date_id

      t.timestamps
    end
  end
end
