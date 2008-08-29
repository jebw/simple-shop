class LineItem < ActiveRecord::Base
	belongs_to :line_item
	belongs_to :order
end
