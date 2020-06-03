require 'rails_helper'

RSpec.feature "User can navigates from home page to product and add one product to the cart", type: :feature, js: true do
  # SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "visit the homepage and add one product to the cart" do
    # ACT
    visit root_path
    # DEBUG / VERIFY
    expect(page).to have_content('My Cart (0)')
    find('.btn-primary', match: :first).click
    # VERIFY
    expect(page).to have_content('My Cart (1)')
    save_screenshot('my_cart.png')
  end

end