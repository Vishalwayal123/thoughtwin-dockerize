class CarrersController < ApplicationController
  before_action :ensure_admin, only: [:new, :edit, :update, :destroy]

	def index
		@carrers = Carrer.all
	end

  def new
  	@carrer = Carrer.new
  end
  def create
  	@carrer = Carrer.new(carrer_params)
    if @carrer.save
      redirect_to carrers_path
      flash[:success] = "Carrer Saved"
    else
    flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  def edit
    @carrer = Carrer.find(params[:id])
  end

  def update
    @carrer = Carrer.find(params[:id])
    if @carrer.update(carrer_params)  
      redirect_to carrers_path
      flash[:success] = "Portfolio Update"
    else
      flash[:error] = 'Something went wrong'
      render 'edit'
    end
  end

  def destroy
    @carrer = Carrer.find(params[:id])
    @carrer.delete
    redirect_to carrers_path
    flash[:success] = "Portfolio Deleted"
  end

  def ensure_admin
    if @check_user || @is_carrer 
      flash[:success] = 'You are authorized to this path'
    else
      redirect_to carrers_path
      flash[:error] = 'You are not authorized to this path'
    end 
  end

  def show
  end

  private

  def carrer_params
    params.require(:carrer).permit(:title, :time_duration, :description)
  end
end
