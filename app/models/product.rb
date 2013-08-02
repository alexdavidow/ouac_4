class Product < ActiveRecord::Base
  attr_accessible :name, :price, :quantity
  has_many :product_orders
  belongs_to :shopping_carts, through: :product_orders
end
