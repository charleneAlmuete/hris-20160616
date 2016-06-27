class ExamController < ApplicationController
  def new
  	@exam= Licensure.new
  end

  def create
  	@exam= Licensure.create(params.require(:Licensure).permit(:employee_id, :name, :rating, :licenseNo, :image))
  	if @exam.save
  		flash[:notice]= "Employee's Licensure and Examination have been successfully saved!"
  		redirect_to controller: 'work', action: 'new'
  	end
  end

  def edit
  	@exam= Licensure.find(params[:employee_id])
  end

  def update
  	@exam= Licensure.find(params[:employee_id])
  	@exam.update(params.require(:Licensure).permit(:name, :rating, :licenseNo, :image))
  	if @exam.update
  		flash[:notice]= "Employee's Licensure and Examination have been successfully updated!"
  	end
  end
end
