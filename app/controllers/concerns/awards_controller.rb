class AwardsController < ApplicationController
  def new
  	@awards= Award.new
  end

  def create
  	@awards= Award.create(params.require(:Award).permit(:employee_id, :name, :institution, :dateGiven))
  	if @awards.save
  		flash[:notice]= "Employee's Award/Achievements has been successfully saved!"
      redirect_to controller: 'exam', action: 'new'
  	end
  end

  def edit
  	@awards= Awards.find(params[:employee_id])
  end

  def update
  	@awards= Awards.find(params[:employee_id])
  	@awards.update(params.require(:Award).permit(:name, :institution, :dateGiven))
  	if @awards.update
  		flash[:notice]= "Employee's educational background has been successfully updated!"
  	end
  end
end
