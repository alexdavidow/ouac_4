class ShoppingCart < ActiveRecord::Base
  attr_accessible :user_id, :user, :total_price, :num_of_items, :order_id
  has_one :user
  has_one :order

  after_create :create_order


  def empty_cart
    puts "BEGIN CART DUMP"
    # Find the current order within the cart
    current_order = self.order
    # Remove the association between the cart and the order, freeing the cart itself temporarily
    current_order.shopping_cart_id = nil
    puts "DUMPED ORDER RELATIONSHIP"
    self.order = nil
    puts "DUMPED CART RELATIONSHIP"
    # Create new order via create_order
    self.create_order
  end

  def create_order
    self.order = Order.create(shopping_cart_id: self.id, shopping_cart: self)
  end
end
