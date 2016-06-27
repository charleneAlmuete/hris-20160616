class MedicalController < ApplicationController
  def new
  	@medical= Medical.new
  end

  def create
  	@medical= Medical.create(params.require(:Medical).permit(:employee_id, :condition, :started, :physician))
  	if @medical.save
  		flash[:notice]= "Employee's medical history and record have been successfully saved!"
  	end
  end

  def edit
  	@medical= Medical.find(params[:employee_id])
  end

  def update
  	@medical= Medical.find(params[:employee_id])
  	@medical.update(params.require(:Medical).permit(:condition, :started, :physician))
  	if @medical.update
  		flash[:notice]= "Employee's medical history and record have been successfully updated!"
  	end
  end
end
