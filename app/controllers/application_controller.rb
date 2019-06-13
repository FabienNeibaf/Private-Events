class ApplicationController < ActionController::Base
	include SessionsHelper

  def index
    @user = current_user
    @user ? redirect_to(@user) : render('/index')
  end

  # def current_user
  #   user_id = session[:user_id]
  #   User.find(user_id) if user_id
  # end
end
