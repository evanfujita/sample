class Lesson < ApplicationRecord
  has_many :daily_lessons
  has_many :daily_updates, through: :daily_lessons
end
