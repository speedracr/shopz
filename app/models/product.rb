class Product < ActiveRecord::Base
	# attr_accessible :image
	mount_uploader :product_image, ProductImageUploader
end
