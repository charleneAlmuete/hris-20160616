class EmployeeController < ApplicationController
  def new
  	@employee= Employee.new
  end

  def new_personal
    @employee= Employee.new
  end

  def new_basic_contact
    @basic= Employee.new
  end

  def new_emergency_contact
    @emergency= Employee.new
  end

  def create_personal
    @employee= Employee.create( personal_info_params )

    if @employee.save
      @empid= @employee.id
      redirect_to new_education_path
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def index
    @profile_grid = initialize_grid(Employee, per_page: 20)
  end


  private

  def find_employee
    @employee = Employee.find(params[:id])
  end

  def personal_info_params
    params.require(:employee).permit(:fName, :lName, :placeBirth, :dateBirth, :gender, :civilStatus, :citizenship, 
      :religion, :language, :bloodType, :height, :weight, :hair, :complexion)
  end

  def educaion_params
    params.require(:employee).permit(:employee_id, :levelType, :course, :school, :yearGrad)
  end
end
