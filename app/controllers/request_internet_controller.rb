class RequestInternetController < ApplicationController
	def index
		@internet_request = InternetRequest.new
	end

	def send_message
		# render text: params['internet_request']
		# return
		@internet_request = InternetRequest.new(params['internet_request'])

		if @internet_request.valid?
			InternalMailer.internet_request(@internet_request).deliver
			redirect_to :back, with: flash[:notice] = "Your message was sent successfully"
		else
			render 'request_internet/index'
		end
	end
end
