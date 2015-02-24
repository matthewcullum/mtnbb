class Article < ActiveRecord::Base
	validates :title, presence: true

	def self.order_by_date_desc
		order('created_at DESC')
	end
end
