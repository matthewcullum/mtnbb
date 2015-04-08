class ContactController < ApplicationController
	def index
		@contact = Contact.new
	end

	def send_message
		# render text: params['contact']
		# return
		@contact = Contact.new(params['contact'])

		if @contact.valid?
			InternalMailer.contact(@contact).deliver
			redirect_to :back, with: flash[:notice] = "Your message was sent successfully"
		else
			render 'contact/index'
		end
	end
end
