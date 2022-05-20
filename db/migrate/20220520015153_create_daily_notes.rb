class CreateDailyNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_notes do |t|
      t.integer :note_id
      t.integer :daily_update_id

      t.timestamps
    end
  end
end
