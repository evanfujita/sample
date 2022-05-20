class Note < ApplicationRecord
  has_many :daily_notes
  has_many :daily_updates, through: :daily_notes
end