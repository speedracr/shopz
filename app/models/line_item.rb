class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  validates_presence_of :product, :cart
end
