class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.text   :body, default: ''
      t.integer :daily_update_id

      t.timestamps
    end
  end

end
