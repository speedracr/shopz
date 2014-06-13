class AddStatusAndEmailToCart < ActiveRecord::Migration
  def change
  	    add_column :carts, :email, :string
  	    add_column :carts, :status, :string, default: "created"
  end
end
