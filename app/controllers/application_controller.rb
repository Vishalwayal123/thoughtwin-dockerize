class ApplicationController < ActionController::Base
  before_action :indentify_user
  before_action :configure_permitted_parameters, if: :devise_controller?
  def after_sign_in_path_for(resource)
    dashboard_path
  end
  private
  def indentify_user
    if user_signed_in?
     @is_portfolio =  current_user.is_portfolio
     @is_carrer    =  current_user.is_carrer
     @is_metatags  =  current_user.is_metatags
   else
     @check_user   =  current_admin_user.present?
     @check_user_admin   =  current_admin_user.present?
   end
 end
 protected
 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up,
     keys: [:username, :name, :email, :password, :password_confirmation])
   devise_parameter_sanitizer.permit(:sign_in,
     keys: [:username, :password, :password_confirmation])
   devise_parameter_sanitizer.permit(:account_update,keys: [:profile_image,:username, :first_name, :last_name, :name, :email, :address,:doj,:date_of_birth,:gender,:contact_number,:martial_status,:father_name,:father_contact,:mother_name,:mother_contact,:present_address,:permanent_address,:email_primary,:blood_group,:religion,:language_known,:if_yes_spouse_contact_number, :password_confirmation, :current_password, account_detail_attributes: [:user_id,:account_number, :ifsc_code, :branch_address,:pan_number,:aadhar_number, :pan_card, :aadhar_card]])
 end
end





