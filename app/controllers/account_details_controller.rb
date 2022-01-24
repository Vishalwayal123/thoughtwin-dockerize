class AccountDetailsController < ApplicationController
  def show
    @account_detail = AccountDetail.find(params[:id])
  end
  def new
    @account_detail = AccountDetail.new
  end
  def create
    @account_detail  = AccountDetail.new(account_detail_params)
    if @account_detail.save
      flash[:success] = "accont details save"
      render "admins/index"
    else
      flash[:error] = "errore"
      render "new"
    end
  end
  def edit
    @account_detail = Account_details.find(params[:id])
  end
  def update
    @user = User.find(params[:user_id])
    @account_detail = @user.account_details.update(account_detail_params)
  end
  private
    def account_detail_params
      params.require(:account_detail).permit(:account_number, :ifsc_code, :branch_address,:pan_number,:aadhar_number, :pan_card, :aadhar_card,:user_id)
    end
end
