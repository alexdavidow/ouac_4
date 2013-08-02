class Product < ActiveRecord::Base
  attr_accessible :name, :price, :quantity
  has_many :product_orders
  has_one :shopping_carts, through: :product_orders
end
