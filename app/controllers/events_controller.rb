class EventsController < ApplicationController

  def index
    @past = Event.past
    @upcoming = Event.upcoming
  end

  def new
    @event = Event.new
  end

  def create
    @event = @current_user.created_events.build(event_params)
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
    p params[:event][:event_date]
    params.require(:event).permit(:title, :description, :creator_id, :event_date)
  end
end
