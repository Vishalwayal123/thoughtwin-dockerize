class UserMailer < ApplicationMailer
  default from: 'enquiry.thoughtwin@gmail.com'
  def contact_mail(support, feedback_params)
  	@email = feedback_params[:email]
  	@first_name = feedback_params[:first_name]
  	@last_name = feedback_params[:last_name] 
  	@contact_number = feedback_params[:contact_number] 
  	@description = feedback_params[:description]
	mail(to: support.email, subject: 'Thoughtwin Enquiry')
  end
end

