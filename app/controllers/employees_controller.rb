class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
  end
  
  ####################################### Writing the given queries ####################################
   ##Order by age
  def orderbyage
	@employee = Employee.order("age")
  end
  
   ##Order by department
  def orderbydept
	@employee = Employee.order("department_id")
  end
  
   ##Order by salary
  def orderbysalary
	@employee = Employee.order("salary")
  end
  
   ##Show retired employees
  def retired
	@employee = Employee.order("age")
  end
  
   ##Highest salary employee
  def highestsalary
	@employee = Employee.order("salary")
  end
  
   ##Top 5 salaried employees
  def top5salaries
	@employee = Employee.order("salary")
  end
  
   ##Show 5 salaried employees by department
  def top5bydept
	@employee = Employee.order("salary and department_id")
  end
  
   ##top 5 senior most employees
  def top5seniors
	@employee = Employee.order("age")
  end
  
   ##Highest - Lowest salaried employees
  def highlow
	@employee = Employee.order("salary")
  end
  
   ##Lowest salaried senior most
  def lowsenior
	@employee = Employee.order("salary")
  end
################################################## End of queries given #########################################


  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:name, :age, :email, :salary, :department_id)
    end
end
