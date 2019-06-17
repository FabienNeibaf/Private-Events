class UsersController < ApplicationController
  def show
    @prev_events = @current_user.previous_events
    @upcoming_events = @current_user.upcoming_events
  end

  def new
  end

  def create
  end
end
