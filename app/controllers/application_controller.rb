class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :user_logged_in?

  def user_logged_in?
    if session[:name] then
        return
    else
        reset_user_session
        redirect_to("/login")
    end
  end
  
  def reset_user_session
    session[:user_id] = nil
    @current_user = nil
  end
end
