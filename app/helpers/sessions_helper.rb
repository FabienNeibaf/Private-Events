module SessionsHelper

  def current_user
    user_id = session[:user_id]
    @current_user = User.find(user_id) if user_id
  end

  def log_in
    session[:user_id] = @user.id
    redirect_to @user
  end
end
