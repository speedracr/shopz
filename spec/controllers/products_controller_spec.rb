require 'rails_helper'

describe ProductsController do
  it "should allow creation of new products with name, price_in_cents" do 
    product = FactoryGirl.create(:product)
    expect(product).to eq(Product.last)
  end

  it "should not allow creation of new products without name, price_in_cents" do 
    product1 = FactoryGirl.create(:product)
    product2 = Product.create!(name: "", price_in_cents: nil)
    expect(product2).to eq(nil)
    # Actually, we expect an error message...
  end





end