require 'spec_helper'

describe ShoppingCart do
  # Insert tests for shopping cart model here
  # A shopping cart must be constructed properly
  describe 'instantiate' do
    it 'should create a new instance of the shopping cart class' do
      cart = ShoppingCart.new
      cart.should be_valid
    end
  end
  # A shopping cart must have valid attributes
  describe 'validate' do
    it 'should be associated with a user' do
      pending
    end
  end

  describe 'basic cart functions' do
    # A user must be able to add items to their shopping cart
    it 'should add items to itself' do
      pending
      # User will click a button
    end
    # A user must be able to update the quantity of items in their shopping cart
    it 'should update the quantity of items within itself' do
      pending
    end
    # A user must be able to delete items from their shopping cart
    it 'should remove items from itself' do
      pending
    end
  end
  # A shopping cart must correctly total its quantity of its items
  # A shopping cart must correctly total the price of all items within it

  ########------ AFTER STRIPE IS IMPLEMENTED--------#####
  # A shopping cart must empty itself out after a successful purchase
  # A shopping cart must add a successful order to the user's order history
end
