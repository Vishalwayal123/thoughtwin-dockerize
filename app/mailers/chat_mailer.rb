class ChatMailer < ApplicationMailer

	def email_send(useremail)
	@useremail = useremail
	mail(to: admin_email, subject: "Chat Boot msg")
   end
end
