class DailyLesson < ApplicationRecord
  belongs_to :daily_update
  belongs_to :lesson
end