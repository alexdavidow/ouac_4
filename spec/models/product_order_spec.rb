require 'spec_helper'

describe 'ProductOrder' do
  before do
    @item = ProductOrder.create
    @product = Product.create
    @cart = ShoppingCart.create
    @cart.product_orders <<  @item
    @product.product_orders << @item
  end
  describe 'validations' do
    it 'should belong to a shopping cart' do
     @item.shopping_cart.should eq(@cart) 
    end
     it 'should belong to a product' do
      @item.product.should eq(@product)
     end
  end
end
