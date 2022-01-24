class HomeController < ApplicationController
  def index
    @meta_data = MetaContent.where(page: "home").first
    @disable_nav = true
  end
  def about
    @meta_data = MetaContent.where(page: "about").first
  end  
  def ourteam
    @meta_data = MetaContent.where(page: "ourteam").first
  end
  def careers
    @meta_data = MetaContent.where(page: "careers").first
  end
  def contact
    @meta_data = MetaContent.where(page: "contact").first
  end
  def portfolio
    @meta_data = MetaContent.where(page: "portfolio").first
  end
  # binding.pry
  def mailer
    #binding.pry
    ChatMailer.email_send(params[:flagmsg]).deliver_now
  end
  def contact_mail
    support_emails = SupportEmail.all
    feedback_params = {email: params[:email], first_name: params[:first_name], contact_number: params[:contact_number], last_name: params[:last_name], description: params[:description]}
    if verify_recaptcha
      support_emails.each do |support|
        UserMailer.contact_mail(support, feedback_params).deliver
        flash[:notice] = 'Successfully submitted your message.Contact you soon.'
      end
      redirect_to thankyou_path
    else 
      redirect_to contact_path 
    end  
  end

  def iot_portfolio
  end
  def mob_portfolio
  end
  def thankyou
  end
  def android
  end
  def nodejs
  end
  def python
  end
  def ror
  end
  def reactdev
  end
  def angular
  end
  def phpdev
  end
  def mernstack
  end
  def meanstack
  end
  def ios
  end
  def reactnative
  end
end
