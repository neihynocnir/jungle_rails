require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

      it 'should validate product is valid' do
        @category = Category.new
        @product = Product.new(name: 'test_name', price: 20, quantity: 10, category: @category)
        expect(@product).to be_valid
      end
  
      it 'should validate presence of name' do
        @category = Category.new
        @product = Product.new(price: 20, quantity: 10, category: @category)
        expect(@product).to_not be_valid
        expect(@product.errors.full_messages.first).to eq "Name can't be blank"
      end
  
      it 'should validate presence of price' do
        @category = Category.new
        @product = Product.new(name: 'test_name', quantity: 10, category: @category)
        expect(@product).to_not be_valid
        expect(@product.errors.full_messages.second).to eq "Price is not a number"
      end
  
      it 'should validate presence of quantity' do
        @category = Category.new
        @product = Product.new(name: 'test_name', price: 20, category: @category)
        expect(@product).to_not be_valid
        expect(@product.errors.full_messages.first).to eq "Quantity can't be blank"
      end
  
      it 'is not valid without a category' do
        @category = Category.new
        @product = Product.new(name: 'test_name', price: 20, quantity: 10)
        expect(@product).to_not be_valid
        expect(@product.errors.full_messages.first).to eq "Category can't be blank"
      end
  end
end
