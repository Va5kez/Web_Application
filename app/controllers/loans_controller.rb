class LoansController < ApplicationController
  def new
    @employee = Employee.find(params[:employee_id])
    @loan = Employee.loans.build

  end

  def create
    @employee = Employee.find(params[:employee_id])
    @loan = Employee.loans.build(loan_params)

   if loan.save
     redirect_to @loan, notice: "PRESTAMO AGREGADO CON EXITO"
   else
     flash[:errors] = "NO SE PUDO AGREGAR UN PRESTAMO"
     render :new
  end

  def edit
  end

  def destroy
    @employee = Employee.find(params[:employee_id])
    @loan = Employee.loans.find(params[:id])
    @loan.destroy
    redirect_to @employee, notice: "PRESTAMO ELIMINADO CON EXITO"
  end

  def show
    @loan = Loan.find(params[:id])
  end

  def index
    @loan = Loan.all
  end
  protected
  def loan_params
    params.require(:employee).permit(:amount,:balance,:tipo,:periods)
  end
end
