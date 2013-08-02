require 'spec_helper'

describe ShoppingCart do
  before do
    @cart = ShoppingCart.create
    @user = User.create(email: 'Example@Example.com', name: 'User', password: '12345678', password_confirmation: '12345678')
    @user.shopping_cart = @cart
  end
  # Insert tests for shopping cart model here
  # A shopping cart must be constructed properly
  describe 'instantiate' do
    it 'should create a new instance of the shopping cart class' do
      @cart.should be_valid
    end
  end
  # A shopping cart must have valid attributes
  describe 'validate' do
    it 'should be associated with a user' do
        @cart.user.should eq(@user)
    end

    it 'can have a product order associated with it' do
      product = ProductOrder.new
      @cart.product_orders << product
      @cart.product_orders.include?(product).should be_true
    end
  end
end
