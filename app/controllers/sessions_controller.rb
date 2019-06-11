class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(name: params[:session][:name])
    if @user
      session[:user_id] = @user.id
      redirect_to @user
    else
      flash.now[:alert] = "This user doesn't exist"
      render 'new'
    end
  end

  def delete
    session.delete(:user_id)
    redirect_to root_url
  end
end
