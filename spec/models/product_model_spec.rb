require 'rails_helper'

describe Product do

  it "should return products matching the searchterm" do
    product = FactoryGirl.create(:product, name: "hats")
    searchresult = Product.search("hats")

    expect(searchresult.first.name).to eq("hats")
  end
  
end