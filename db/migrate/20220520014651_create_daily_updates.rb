class CreateDailyUpdates < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_updates do |t|
      t.integer :daily_lesson_id
      t.integer :daily_note_id

      t.timestamps
    end
  end
end
