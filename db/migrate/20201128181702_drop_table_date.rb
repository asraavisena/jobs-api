class DropTableDate < ActiveRecord::Migration[6.0]
  def change
    drop_table :dates
  end
end
