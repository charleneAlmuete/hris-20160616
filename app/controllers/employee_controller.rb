class EmployeeController < ApplicationController
  def new
  	@employee= Employee.new
  end

  def create
    @employee= Employee.create(params.require(:employee).permit(:fName, :lName, :placeBirth, :dateBirth, :gender, :civilStatus, :citizenship, 
      :religion, :language, :bloodType, :height, :weight, :hair, :complexion))
    if @employee.save
      @empid= @employee.id
      redirect_to edit_employee_path(@empid)
    end
    # @employee = Employee.find(params[:id])
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

  def new_education
    @education= Education.new
  end

  def new_personal
    @employee= Employee.new
  end

  def new_awards
    @awards= Award.new
  end

  def new_exam
    @exam= Licensure.new
  end

  def new_work
    @work= Work.new
  end

  def new_skill
    @skills= Skill.new
  end

  def new_organization
    @organization= Organization.new
  end

  def new_training
    @training= Training.new
  end

  def new_medical
    @medical= Medical.new
  end

  def new_basic_contact
    @basic= Employee.new
  end

  def new_emergency_contact
    @emergency= Employee.new
  end

  def service
    @child= Children.new
  end

  
end
