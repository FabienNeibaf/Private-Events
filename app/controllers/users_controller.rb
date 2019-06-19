class UsersController < ApplicationController
  def show
    @prev_events = @current_user.previous_events
    @upcoming_events = @current_user.upcoming_events
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in
    else
      flash.now[:alert] = 'Something went wrong!'
      render 'new'
    end
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
