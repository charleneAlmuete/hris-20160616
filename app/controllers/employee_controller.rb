class EmployeeController < ApplicationController
  def new
  	@employee= Employee.new
    @education= Education.new
    @awards= Award.new
    @exam= Licensure.new
    @work= Work.new
    @skills= Skill.new
    @organization= Organization.new
    @training= Training.new
    @medical= Medical.new
    @child= Children.new
  end

  

  def create
  end

  def edit
    @child= Children.new
  end

  def update
  end

  def show
  end

  def index
    @profile_grid = initialize_grid(Employee, per_page: 20)
  end

  
end
