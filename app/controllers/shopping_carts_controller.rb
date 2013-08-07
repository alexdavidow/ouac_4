class ShoppingCartsController < ApplicationController
  include CurrentCart
  before_filter :user_signed_in?
  def show
    @cart = current_cart
    @order = current_cart.order
    @items = @order.product_orders.all
  end

end
