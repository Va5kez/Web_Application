class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  before_action :authenticate

  def authenticate
    unless current_user
      redirect_to login_path
    end
  end

  def current_user
    if session[:user_id]
      @current_user = Employee.find(session[:user_id])
    end
  end

  def login(user)
    session[:user_id] = user.id
    if user.tipo == "USER"
      redirect_to user

    elsif user.tipo == "ADMIN"
      redirect_to employees_path
    else
      logout
    end
  end

  def logout
    reset_session
    redirect_to login_path
  end
end
