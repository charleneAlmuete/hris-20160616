class CompanyController < ApplicationController
	
  def index
    @company_grid = initialize_grid(Company)
  end

  def show
    @company= Company.find(params[:id])
  end

  def new
    @company= Company.new
  end

  def create
    @company= Company.create(params.require(:company).permit(:name, :code, :address, :contactno, :email, :website))
    if @company.save
     redirect_to root_path
    end
  end

  def update
    @company= Company.find(params[:id])
    @company.update(params.require(:company).permit(:name, :code, :address, :contactno, :email, :website))
    redirect_to root_path
  end

  def destroy
  end

end
