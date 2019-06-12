module SessionsHelper

  def current_user
    user_id = session[:user_id]
    User.find(user_id) if user_id
  end

end
