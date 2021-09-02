class RequestsController < ApplicationController
  before_action :find_employee, except: [:destroy, :index]

  def index
    @requests = Request.all
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.employee = @employee
    if @request.save
      redirect_to employees_path(@employee)
    else
      render :new
    end
  end

  def destroy
    @request = Request.find(params[:id])
    @employee = @request.employee_id
    @request.destroy
    redirect_to employees_path(@request.employee)
  end

  private

  def find_employee
    @employee = Employee.find(params[:employee_id])
  end

  def request_params
    params.require(:request).permit(:kind_of, :amount, :request_date, :request_reason)
  end
end
