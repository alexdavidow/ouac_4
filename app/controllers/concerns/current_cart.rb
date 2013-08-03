module CurrentCart
  extend ActiveSupport::Concern

  private

  def current_cart
    @cart = ShoppingCart.find(params[:cart_id])
    rescue
    @cart = ShoppingCart.create
    sessions[:cart_id] = cart.id
  end
end
