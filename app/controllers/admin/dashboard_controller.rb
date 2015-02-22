class Admin::DashboardController < ApplicationController
	before_filter :authenticate_admin!
	layout 'admin'

	def index
		@current_admin = current_admin
	end
end
