class ShoppingCartsController < ApplicationController
  include CurrentCart
  before_filter :user_signed_in?
  def show
    @items = current_cart.product_orders.all
  end
end
