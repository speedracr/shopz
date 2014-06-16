require 'rails_helper'

feature "search" do

    scenario "for products" do
        Product.create(name: "hats", price_in_cents: 500)
        visit "/"
        fill_in('search', :with => "hats")
        click_on('Search')

        expect(find('.products')).to have_content("5")
    end

     scenario "for products that dont exist" do

        visit "/"
        fill_in('search', :with => "kezboardmashing")
        click_on('Search')

        expect(page).to have_content("Your search didn't return any results")
    end
    
end