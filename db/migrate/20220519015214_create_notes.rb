class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :date
      t.string :title
      t.string :body
      t.string :lesson

      t.timestamps
    end
  end
end
