class NotesController < ApplicationController

    def new
        @note = Note.new
    end

    def index
        @notes = Note.all
    end

    def create
        note = Note.create(note_params)
        pp "\n\n\n\n #{note} \n\n\n"
        render index
    end

    def show
        @note = Note.find(params[:id])
    end

    private

    def note_params
        params.require(:note).permit(:date, :title, :body, :lesson)
    end
end
