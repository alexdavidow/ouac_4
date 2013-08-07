class Order < ActiveRecord::Base
  attr_accessible :mailing_address, :phone_number, :email_address, :delivery_date, :shopping_cart_id, :shopping_cart
  belongs_to :shopping_cart
  has_many :product_orders

  def add_item
  end


  def order_sum
    total = 0
    cart_total = []
    self.product_orders.each do |po|
      po.product_id
      product = Product.find po.product_id
      product_quantity = po.quantity
      po_sub_total = product.price * product_quantity
      cart_total << po_sub_total
      total = cart_total.reduce(:+)
      p product.name
    end
    total
  end
end
