class ProductOrder < ActiveRecord::Base
  attr_accessible :order_id, :product_id, :product, :quantity, :price
  belongs_to :order, dependent: :destroy
  belongs_to :product
  
end
