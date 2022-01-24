class PortfoliosController < ApplicationController
  before_action :ensure_admin, only: [:new, :edit, :update, :destroy]
  
  def index
    @portfolios = Portfolio.where(web_type: "Web Portfolio").order(created_at: :asc)
  end

  def new
    @portfolio = Portfolio.new
  end

  def create
    @portfolio = Portfolio.new(portfoilo_params)
    if @portfolio.save
      redirect_to portfolios_path
      flash[:success] = "Portfolio Saved"
    else
    flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  def edit
    @portfolio = Portfolio.find(params[:id])
  end

  def update
    @portfolio = Portfolio.find(params[:id])
    if @portfolio.update(portfoilo_params)  
      redirect_to portfolios_path
      flash[:success] = "Portfolio Update"
    else
      flash[:error] = 'Something went wrong'
      render 'edit'
    end
  end

  def destroy
    @portfolio = Portfolio.find(params[:id])
    @portfolio.delete
    redirect_to portfolios_path
    flash[:success] = "Portfolio Deleted"
  end

  def ios_portfolio
    @portfolios = Portfolio.where(web_type: "Ios portfolio")
  end

  def mob_portfolio
    @portfolios = Portfolio.where(web_type: "Mobile Portfolio")
  end

  def ensure_admin
    if @check_user || @is_portfolio
      flash[:success] = 'You are authorized to this path'
    else
      redirect_to  portfolios_path
      flash[:error] = 'You are not authorized to this path'
    end 
  end

  private

  def portfoilo_params
    params.require(:portfolio).permit(:title, :description, :image, :language, :web_link, :web_type, :admin_id, :user_id)
  end
end
