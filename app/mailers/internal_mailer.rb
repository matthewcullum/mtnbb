class InternalMailer < ApplicationMailer
	default from: "noreply@mtnbb.com", to: "creativelyconcise@gmail.com", format: 'html'

	# Subject can be set in your I18n file at config/locales/en.yml
	# with the following lookup:
	#
	#   en.internal_mailer.contact.subject
	#
	def contact(contact)
		@contact = contact
		mail do |format|
			format.html
		end
	end

	# Subject can be set in your I18n file at config/locales/en.yml
	# with the following lookup:
	#
	#   en.internal_mailer.internet_request.subject
	#
	def internet_request(internet_request)
		@internet_request = internet_request
		mail do |format|
			format.html
		end
	end
end
