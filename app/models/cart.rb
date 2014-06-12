class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	def contents
		line_items.map{|i| i.product.name }
	end
end
