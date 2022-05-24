class DailyUpdate < ApplicationRecord
  has_many :daily_lessons
  has_many :lessons, through: :daily_lessons
  has_many :notes
  accepts_nested_attributes_for :lessons
  accepts_nested_attributes_for :notes
end
 