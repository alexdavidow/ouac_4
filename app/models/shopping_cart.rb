class ShoppingCart < ActiveRecord::Base
  attr_accessible :user_id, :user, :total_price, :num_of_items, :order_id
  has_one :user
  has_one :order, dependent: :destroy

  after_create :create_order

  def create_order
    self.order = Order.create(shopping_cart_id: self.id, shopping_cart: self)
  end
end
