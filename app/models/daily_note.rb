class DailyNote < ApplicationRecord
  belongs_to :daily_update
  belongs_to :note
end