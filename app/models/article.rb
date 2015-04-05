class Article < ActiveRecord::Base

	def self.order_by_date_desc
		order('created_at DESC')
	end
end
