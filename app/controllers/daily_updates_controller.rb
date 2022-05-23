class DailyUpdatesController < ApplicationController

    before_action :find_or_create

    def home
        # byebug
    end

    def new
      byebug
    end

    def create
      byebugd
    end

    def index
      @daily_updates = DailyUpdate.all
    end

    def update
      @daily_update.update(daily_update_params)
      redirect_to root_path
    end

    def show
    end

    private

    def daily_update_params
      params.require(:daily_update).permit(:title, notes_attributes: [:body], lessons_attributes: [:body])
    end

    def find_or_create
      current_date = helpers.display_formatted_date(Time.now)
      @daily_update = DailyUpdate.find_or_create_by(date: current_date)
    end

end
