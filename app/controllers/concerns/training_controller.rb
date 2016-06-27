class TrainingController < ApplicationController
  def new
  	@training= Training.new
  end

  def create
  	@training= Training.create(params.require(:Training).permit(:employee_id, :name, :started, :ended, :institution, :venue, :speaker, :remarks))
  	if @training.save
  		flash[:notice]= "Employee's training and seminar attended have been successfully saved!"
  		redirect_to controller: 'medical', action: 'new'
  	end
  end

  def edit
  	@training= Training.find(params[:employee_id])
  end

  def update
  	@training= Training.find(params[:employee_id])
  	@training.update(params.require(:Training).permit(:name, :started, :ended, :institution, :venue, :speaker, :remarks))
  	if @training.update
  		flash[:notice]= "Employee's Training and Seminar have been successfully updated!"
  	end
  end
end
