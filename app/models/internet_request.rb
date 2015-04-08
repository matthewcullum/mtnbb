class InternetRequest
	include ActiveModel::Validations
	include ActiveModel::Conversion
	extend ActiveModel::Naming

	attr_accessor :first_name, :last_name, :email, :phone_number, :message, :address, :plan

	validates_presence_of :first_name, :last_name, :email, :phone_number, :address, message: 'Field is required'
	validates_format_of :email, message: 'please enter a valid email', :with => %r{.+@.+\..+}, allow_blank: true

	def initialize(attributes = {})
		attributes.each do |name, value|
			send("#{name}=", value)
		end
	end

	def persisted?
		false
	end
end
