require 'rails_helper'

feature "cart" do
  def http_login
    user = 'admin'
    pw = 'admin'
    #request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user,pw)
    
    if page.driver.respond_to?(:basic_auth)
      page.driver.basic_auth(user, pw)
    elsif page.driver.respond_to?(:basic_authorize)
      page.driver.basic_authorize(user, pw)
    elsif page.driver.respond_to?(:browser) && page.driver.browser.respond_to?(:basic_authorize)
      page.driver.browser.basic_authorize(user, pw)
    else
      raise "I don't know how to log in!"
    end
  end 


  scenario "add item to cart" do
    Product.create(name: "hats", price_in_cents: 200)
    visit "/"
    expect(page).to have_content("hats")
    
    click_link("Show")
    click_button("Add to Cart")

    expect(page).to have_content("Your Total Checkout Price: 200")
    expect(page).to have_content("Your cart has 1 items")
  end

  scenario "show current cart contents" do
    pending("need to fix this")

    
    http_login
  
    # -Create a Current_cart
    # -Go to Historical Carts page
    # -Check that Current_cart contents are correct

    product1 = FactoryGirl.create(:product)
    product2 = FactoryGirl.create(:product, name: "Boots")
    product3 = FactoryGirl.create(:product, name: "Shirt")

    cart = Cart.create
    cart.add_item(product1)
    cart.add_item(product2)
    cart.add_item(product3)
  
    visit "/carts"

    expect(page).to have_content("Your cart has 3 items")


  end


end
