module ApplicationHelper
    def display_formatted_date(date)
      date.strftime(Rails.configuration.standard_date_format)
    end
end
