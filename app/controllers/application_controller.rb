class ApplicationController < ActionController::Base
	include SessionsHelper

  before_action :current_user, unless: -> { @current_user }

  def index
    render('/index')
  end
end
