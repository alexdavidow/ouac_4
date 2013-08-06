class ShoppingCart < ActiveRecord::Base
  attr_accessible :user_id, :user, :total_price, :num_of_items
  has_one :user
  has_many :product_orders, dependent: :destroy

  def add_item(product_id)
    # find the current item
    current_item = product_orders.find_by_product_id(product_id)
    # check if it exists
    if current_item
      # if it does, increase quantity by 1
      current_item.quantity += 1
    # else create a new relationship
    else
      current_item = product_orders.build(product_id: product_id)
    # return the item
    end
    current_item
  end
  
  def total_up_cart
    total = 0
    cart_total = []
    self.product_orders.each do |po|
      po.product_id
      product = Product.find po.product_id
      product_quantity = po.quantity
      po_total_amount = product * product_quantity
      cart_total << po_total_amount
      total = cart_total.reduce(:+)
      p product.name
    end
    total
  end
end
