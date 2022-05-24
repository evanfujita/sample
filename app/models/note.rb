class Note < ApplicationRecord
  belongs_to :daily_update

  enum note_type: {preview: 'Preview', notion: 'Notion', recap: 'Recap'}
end