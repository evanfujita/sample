class CreateDailyUpdates < ActiveRecord::Migration[6.1]
  def change
    create_table :daily_updates do |t|
      t.string :title

      t.timestamps
    end
  end
end
