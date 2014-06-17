require 'rails_helper'

describe ProductsController do
  it "should allow creation of new products with name, price_in_cents" do 
    product = FactoryGirl.create(:product)
    expect(product).to eq(Product.last)
  end

  it "should not allow creation of new products without name, price_in_cents" do 
    expect{
      Product.create!(name: "", price_in_cents: nil)
    }.to raise_error
  end

  it "should have errors for incorrect validations" do
    product = Product.new

    product.valid?
    expect(product.errors[:name]).to include("can't be blank")
  end



end