module ApplicationHelper
    def display_formatted_date(date)
      date.localtime.strftime(Rails.configuration.standard_date_format)
    end
end
