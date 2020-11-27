class CreateJoblanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :joblanguages do |t|
      t.integer :id_job
      t.integer :id_language

      t.timestamps
    end
  end
end
