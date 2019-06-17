class EventsController < ApplicationController

  def index
    @past = Event.past
    @upcoming = Event.upcoming
  end

  def new
    @event = current_user.created_events
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      redirect_to @event
    else
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def add_attendee
    @user = User.find(params[:user_id])
    @user.attended_events
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :creator_id)
  end
end
