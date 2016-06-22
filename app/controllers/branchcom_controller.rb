class BranchcomController < ApplicationController
  def new
  	@branchcom= Branchcom.new
  end

  def newset
    @branchset= Branchset.new
  end

  def create
    @branchset= Branchset.create(params.require(:branchset).permit(:name, :code))
    if @branchset.save
      redirect_to branchcom_index_path
    end
  end

  def edit
    @branchcom= Branchcom.find(params[:id])
  end

  def update
    @branchcom= Branchcom.find(params[:id])
    @branchcom.update(params.require(:branchcom).permit(:company_id, :branchset_id, :address))
    if @branchcom.update
      redirect_to branchcom_index_path
    end
  end

  def index
    @branchnew_grid = initialize_grid(Branchcom)
  end

  private
  def createset
    @branchcom= Branchcom.create(params.require(:branchcom).permit(:company_id, :branch_id, :address))
    if @branchcom.save
      redirect_to branchcom_index_path
    end
  end
end
