class ContactMailer < ApplicationMailer

	def contact_email(message)
		@message = message
		mail(to: 'creativelyconcise@gmail.com', subject: 'Test')
	end
end
