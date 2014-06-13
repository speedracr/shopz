module CurrentCart
	extend ActiveSupport::Concern

	private
		def set_current_cart
			@current_cart = Cart.find(session[:cart_id])
		rescue ActiveRecord::RecordNotFound
			reset_cart
		end
	def reset_cart
			@current_cart = Cart.create
			session[:cart_id] = @current_cart.id
	end
end