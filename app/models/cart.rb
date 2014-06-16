class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	def products
		self.line_items.map { |l| l.product }
	end	


	def add_item(product)
		LineItem.create!(cart: self, product: product)
	end

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
