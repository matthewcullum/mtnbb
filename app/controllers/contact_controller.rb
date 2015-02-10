class ContactController < ApplicationController
	def contact

	end

	def send_message
		 ContactMailer.contact_email(params.inspect).deliver_now
		 redirect_to 'contact'
	end
end
