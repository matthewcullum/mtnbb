class ContactMailer < ApplicationMailer

	def contact_email(message)
		@message =
				"Contact request from #{first_name} #{last_name}. Phone number: #{message.phone_number} Address: #{message.address}"
		mail(to: 'creativelyconcise@gmail.com', subject: 'Contact request')
	end
end
