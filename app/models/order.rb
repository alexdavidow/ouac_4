class Order < ActiveRecord::Base
  attr_accessible :mailing_address, :phone_number, :email, :delivery_date, :shopping_cart_id, :shopping_cart
  belongs_to :shopping_cart
  has_many :product_orders

  def add_item(product_order)
    # find the current item
      current_item = product_orders.find_by_product_id(product_id)
    # check if it exists
    if current_item
    # if it does, increase quantity by 1
      current_item.quantity += 1
    # else create a new relationship
    else
      current_item = product_orders.build(product_order_id: product_order_id)
    # return the item
    end 
      current_item
  end


  def order_sum
    total = 0
    cart_total = []
    self.product_orders.each do |po|
      po.product_id
      product = Product.find(po.product_id)
      product_quantity = po.quantity
      product.price = 25 if product.price.nil?
      po_sub_total = product.price * product_quantity
      cart_total << po_sub_total
      total = cart_total.reduce(:+)
      p product.name
    end
    total
  end
end
