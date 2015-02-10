class ContactController < ApplicationController
	def contact

	end

	def send_message
		 ContactMailer.contact_email(params.inspect).deliver_later
		 redirect_to 'contact'
	end
end
