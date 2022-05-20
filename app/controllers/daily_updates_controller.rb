class DailyUpdatesController < ApplicationController
    def home
      today = helpers.display_formatted_date(Time.now)
      d = DailyUpdate.new(daily_update_params)
      byebug
    end

    def new
      current_date = helpers.display_formatted_date(Time.now)
      daily_update = DailyUpdate.first_or_initialize(created_at: current_date)
      daily_update.save
    end

    def index
      @daily_updates = DailyUpdate.all
    end

    def show
      @daily_update = DailyUpdate.where(params[:id]).includes(:lessons, :notes).first
    end

    def create
      date = helpers.display_formatted_date(Time.now)
      @daily_update.new()
    end

    private

    def daily_update_params(created_at=helpers.display_formatted_date(Time.now) )
      params.require(:daily_update).permit(:created_at)
    end

end
