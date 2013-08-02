require 'spec_helper'

describe 'ProductOrder' do
  before do
    @product = ProductOrder.new
    @cart = ShoppingCart.new
    @cart.product_order <<  @product
  end
  describe 'validations' do
    it 'should belong to a shopping cart' do
     @product.shopping_cart.should eq(@cart) 
    end
  end
end
