require 'rails_helper'

RSpec.feature "User can navigates from home page to product details", type: :feature, js: true do
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

  scenario "visit the homepage" do
    # ACT
    visit root_path
    # DEBUG / VERIFY
    find('.btn-default', match: :first).click
    save_screenshot('home_page.png')
    # VERIFY
    expect(page).to have_content('Description')
    save_screenshot('product_details.png')
  end

end
