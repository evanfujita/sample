class DailyUpdate < ApplicationRecord
  has_many :daily_lessons
  has_many :lessons, through: :daily_lessons
  has_many :daily_notes
  has_many :notes, through: :daily_notes

end
