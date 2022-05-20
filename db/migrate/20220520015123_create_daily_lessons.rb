class CreateDailyLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_lessons do |t|
      t.integer :daily_update_id
      t.integer :lesson_id

      t.timestamps
    end
  end
end
