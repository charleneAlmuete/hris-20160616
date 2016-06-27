class OrganizationController < ApplicationController
  def new
  	@organization= Organization.new
  end

  def create
  	@organization= Organization.create(params.require(:Organization).permit(:employee_id, :institution, :title, :started, :ended))
  	if @organization.save
  		flash[:notice]= "Employee's Organization has been successfully saved!"
  		redirect_to controller: 'training', action: 'new'
  	end
  end

  def edit
  	@organization= Organization.find(params[:employee_id])
  end

  def update
  	@organization= Organization.find(params[:employee_id])
  	@organization.update(params.require(:Organization).permit(:institution, :title, :started, :ended))
  	if @organization.update
  		flash[:notice]= "Employee's Organization has been successfully updated!"
  	end
  end
end
