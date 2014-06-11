class ShoppingCart < ActiveRecord::Base
	has_many :products, through: :line_items
end
