class ProductOrder < ActiveRecord::Base
  attr_accessible :shopping_cart_id, :product_id, :product, :quantity, :price
  belongs_to :order, dependent: :destroy
  belongs_to :product

  # Only want to validate current_users attrs once they hit product_orders/new
  # validates_presence_of :"current_user.name"
  # validates_presence_of :"current_user.email"
  # validates_presence_of :"current_user.phone"
  # validates_presence_of :"current_user.address"
  
end
