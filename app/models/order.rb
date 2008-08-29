class Order < ActiveRecord::Base
	has_many :line_items
	
	def desc
		"#{self.id}: #{self.name}"
	end
end
