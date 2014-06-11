class Product < ActiveRecord::Base
	# attr_accessible :product_image
	mount_uploader :product_image, ProductImageUploader
	def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%") 
	end
	has_many :line_items
end
