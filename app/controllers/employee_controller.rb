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
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
  end

  def index
    @grid_personalinfo = initialize_grid(Company)
  end
end
