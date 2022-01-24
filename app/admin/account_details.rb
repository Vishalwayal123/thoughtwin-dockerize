ActiveAdmin.register AccountDetail do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :account_number, :ifsc_code, :branch_address, :pan_card, :aadhar_card, :user_id, :pan_number, :aadhar_number
  #
  # or
  #
  # permit_params do
  #   permitted = [:account_number, :ifsc_code, :branch_address, :pan_card, :aadhar_card, :user_id, :pan_number, :aadhar_number]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
