class Order < ActiveRecord::Base
	has_many :line_items
	belongs_to :customer
	
	def desc
		"#{self.id}: #{self.name}"
	end
end
