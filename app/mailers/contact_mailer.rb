class ContactMailer < ApplicationMailer

	def contact_email(message)
		@message = message
		mail(to: 'sales@mtnbb.com', subject: 'Contact request')
	end
end
