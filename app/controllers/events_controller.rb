class EventsController < ApplicationController
  def new
    @event = current_user.creator_events.build
    # debugger
    
  end

  def create
    @event = current_user.creator_events.build(event_params)
    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :creator_id)
  end
end
