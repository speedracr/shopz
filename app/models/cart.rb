class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy



	def get_total
		@total = 0
		line_items.each do |p|
			@total = @total + p.product.price_in_cents
		end
		@total
	end

	def total_in_dollars
		@total / 100
	end

end
