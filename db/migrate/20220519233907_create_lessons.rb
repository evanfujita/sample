class CreateLessons < ActiveRecord::Migration[6.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :body
      t.integer :note_id

      t.timestamps
    end
  end
end
