class ProductOrder < ActiveRecord::Base
  attr_accessible :shopping_cart_id, :product_id, :quantity, :price
  belongs_to :shopping_cart
  belongs_to :product
  
end
