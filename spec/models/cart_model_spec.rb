require 'rails_helper'

describe Cart do 

  describe 'total' do 

    it "should return the total of added items" do 
      # make a cart with line items
      cart = Cart.create
      product1 = FactoryGirl.create(:product, price_in_cents: 500)
      product2 = FactoryGirl.create(:product, price_in_cents: 600)    
      cart.add_item(product1)
      cart.add_item(product2)

      expect(cart.get_total).to eq(1100)
    end    
  end

  describe '#add_item' do 
    it "should take a product and add it to cart" do
      product = FactoryGirl.create(:product)
      cart = Cart.create
      cart.add_item(product)

      expect(cart.products.first).to eq(product)
    end
  end
  it "#products should list the products" do
    product = FactoryGirl.create(:product)
    product2 = FactoryGirl.create(:product)

    cart = Cart.create
    cart.add_item(product)
    cart.add_item(product2)



    expect(cart.products.first).to eq(product)
  end
end