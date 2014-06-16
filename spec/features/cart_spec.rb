require 'rails_helper'

feature "cart" do 
  scenario "add item to cart" do 
    Product.create(name: "hats", price_in_cents: 200)
    visit "/"
    expect(page).to have_content("hats")

    click_link("Show")
    click_button("Add to Cart")
    expect(page).to have_content("Your Total Checkout Price: 200")
    expect(page).to have_content("Your cart has 1 items")    
    save_and_open_page
  end
end