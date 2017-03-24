class SessionsController < ApplicationController
skip_before_action :authenticate

  def new
  	if current_user
  		redirect_to employees_path
  	end
  end

  def create
  	user = params[:session][:user]
  	passw = params[:session][:password]

  	@employee = Employee.find_by_user(user)

  	if @employee && @employee.authenticate(passw)
  		login(@employee)
  	else
  		redirect_to login_path, flash: { error: "Usuario o Contraseña Incorrecta"}
  	end
  end

  def destroy
  	logout
end
end
