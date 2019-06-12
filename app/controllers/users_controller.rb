class UsersController < ApplicationController
  def show
    @user = current_user
    @events = Event.where("creator_id = ?", current_user.id)
  end

  def new
  end

  def create
  end
end
