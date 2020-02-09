class EventsController < ApplicationController

  def create
    @event = Event.new(event_params)
    @event.save

    redirect_to new_race_path
  end

  private
    def event_params
      params.require(:event).permit(:event)
    end

end
