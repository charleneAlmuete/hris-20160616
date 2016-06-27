class SkillController < ApplicationController
  def new
  	@skill= Skill.new
  end

  def create
  	@skill= Skill.create(params.require(:Skill).permit(:employee_id, :type, :name, :level))
  	if @skill.save
  		flash[:notice]= "Employee's skill has been successfully saved!"
  		redirect_to controller: 'work', action: 'new'
  	end
  end

  def edit
  	@skill= Skill.find(params[:employee_id])
  end

  def update
  	@skill= Skill.find(params[:employee_id])
  	@skill.update(params.require(:Skill).permit(:type, :name, :level))
  	if @skill.update
  		flash[:notice]= "Employee's skill has been successfully updated!"
  	end
  end
end
