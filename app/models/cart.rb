class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	def total
		@total_price = 0
		line_items.each do |item|
			@total_price = @total_price + item.product.price_in_cents
		end
		@total_price
	end

	def total_in_dollars
		total / 100
	end
end
