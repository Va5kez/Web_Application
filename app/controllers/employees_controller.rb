class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end

  def show
    	@employee = Employee.find(params[:id])
  end

  def create
    @employee = Employee.new(employee_params)

   if @employee.save
     redirect_to employees_path, notice: "Empleado agregado con exito"
   else
     flash[:errors] = "No se pudo agregar al empleado"
     render :new
end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to employees_path, notice: "Empleado fue eliminado con exito"
  end

  def update
  end
  def index
    @employees = Employee.all
  end
  protected
  def employee_params
    params.require(:employee).permit(:name,:address,:primary_email,:secondary_email,:birth_at,:start_at,:user,:password_digest,:tipo)
  end
end
