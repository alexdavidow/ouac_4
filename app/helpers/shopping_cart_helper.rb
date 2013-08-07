module ShoppingCartHelper
  def current_cart
    user = current_user
    if user.shopping_cart
      @cart = user.shopping_cart
    else
      @cart = ShoppingCart.new(user: user, user_id: user.id)
    end
    @cart
  end
end
