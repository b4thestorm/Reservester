class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :logged_in? #this method makes these methods available to the view template

  def current_user #returns the currently logged in user and makes sure its used only once
  	@current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
  	!!current_user #it turns any object into a boolean 
  end

  def require_user
    if !logged_in?
      redirect_to root_path
    end
  end

  def admin  
    if session[:user_id]!= Restaraunt.user_id 
      redirect_to root_path
    end
  end
  
end
