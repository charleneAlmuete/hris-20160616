class EducationController < ApplicationController
  def new
  	@education= Education.new
  end

  def create
  	@education= Employee.create(params.require(:education).permit(:employee_id, :levelType, :course, :school, :yearGrad))
  	if @education.save
  		flash[:notice]= "Employee's educational background has been successfully saved!"
  		@empid= @employee.id
      redirect_to new_award_path
  	end
  end

  def edit
  	@education= Education.find(params[:id])
  end

  def update
  	@education= Education.find(params[:id])
  	@education.update(params.require(:education).permit(:levelType, :course, :schoold, :yearGrad))
    if @education.update
      flash[:notice]= "Employee's educational background has been successfully updated!"
    end
  end

end
