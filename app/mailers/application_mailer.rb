class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
  def admin_email
    "akshat.thoughtwin@gmail.com,saurabh@thoughtwin.com,pankaj@thoughtwin.com,ashutosh@thoughtwin.com"
  end
end
