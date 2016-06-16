class BranchcomController < ApplicationController
  def new
  	@branch= Branchcom.new

  	@all_company= Company.all
  	
  end

  def edit
  end

  def index
  end
end
