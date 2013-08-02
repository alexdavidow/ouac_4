class ProductOrder < ActiveRecord::Base
  attr_accessible :shoping_cart_id, :product_id, :quantity
  belongs_to :shopping_cart
end
