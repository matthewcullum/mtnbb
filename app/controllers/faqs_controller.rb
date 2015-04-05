class FaqsController < ApplicationController
	layout :admin_layout_if_admin_signed_in

	def index
		if admin_signed_in?
			@faqs = Faq.all.paginate page: params[:page], per_page: 5
			render 'admin/faqs/index'
		else
			@faqs = Faq.all
		end
	end

	def new
		@faq = Faq.new
	end

	def create
		attributes = params[:faq]
		faq        = Faq.create description: attributes[:description], title: attributes[:title]
		# render text: faq.errors.full_messages
		redirect_to faq_path(id: faq.id)
	end

	def edit
		@faq = Faq.find(params[:id])
	end

	def show
		@faq = Faq.find(params[:id])
	end

	def destroy
		Faq.destroy params[:id]
		redirect_to faqs_path
	end

	def update
		faq        = Faq.find(params[:id])
		attributes = params[:faq]
		attributes.permit!
		faq.update(attributes)
		redirect_to faq_path faq.id
	end
end
