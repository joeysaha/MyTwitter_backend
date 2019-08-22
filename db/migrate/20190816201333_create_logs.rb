class CreateLogs < ActiveRecord::Migration[5.2]
  def up
    create_table :logs do |t|
      t.integer :thread_number
      t.integer :location
      t.timestamps
    end
  end

  def down
    drop_table :logs
  end
end
