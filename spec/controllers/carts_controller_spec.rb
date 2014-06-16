require 'rails_helper'

describe CartsController do
  def http_login
      user = 'admin'
      pw = 'admin'
      request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(user,pw)
  end  

  it "should render all carts on the index page" do
    http_login
    get :index
    expect(response).to render_template("index")
  end

  it "should not allow index w/out login" do 
    get :index
    expect(response).not_to render_template("index")
  end

  it "adding items to carts redirects to index" do
    product = Product.create(name: "hats", price_in_cents: 200)
    expect(LineItem).to receive(:create!)
    get :add_item_to_cart, product_id: product.id
    expect(response).to be_redirect
  end


  it "add items" do
    product = Product.create(name: "hats", price_in_cents: 200)

    get :add_item_to_cart, product_id: product.id
    expect(response).to be_redirect

    current_cart = assigns(:current_cart)
    expect(current_cart.line_items.first.product).to eq(product)
  end



end