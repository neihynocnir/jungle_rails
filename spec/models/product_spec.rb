require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it 'should validate product is valid' do
      @category = Category.new
      @product = Product.new(name: 'test_name', price: 20, quantity: 10, category: @category)
      expect(@product).to be_valid
    end
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:quantity) }
  
  end
end
