class WorkController < ApplicationController
  def new
  	@work= Work.new
  end

  def create
  	@work= Work.create(params.require(:Work).permit(:employee_id, :position, :company, :durFrom, :durTo, :status, :salary, :reason))
  	if @work.save
  		flash[:notice]= "Employee's work experience has been successfully saved!"
  		redirect_to controller: 'organization', action: 'new'
  	end
  end

  def edit
  	@work= Work.find(params[:employee_id])
  end

  def update
    @work= Work.find(params[:employee_id])
  	@work.update(params.require(:Work).permit(:position, :company, :durFrom, :durTo, :status, :salary, :reason))
  	if @work.update
  		flash[:notice]= "Employee's work experience has been successfully updated!"
  	end
  end
end
