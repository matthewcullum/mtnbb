class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	before_filter :init_markdown

	def init_markdown
		renderer  = Redcarpet::Render::HTML.new
		@markdown = Redcarpet::Markdown.new(renderer, extensions = {})
	end

	def admin_layout_if_admin_signed_in
		admin_signed_in = admin_signed_in?
		admin_signed_in ? 'admin' : 'application'
	end
end
