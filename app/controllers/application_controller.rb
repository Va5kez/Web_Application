class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user = Employee.find(session[:user_id])
    end
  end

  def login(user)
    session[:user_id] = user.id
    redirect_to employees_path(user)
  end

  def logout
    reset_session
    redirect_to login_path
  end
end
