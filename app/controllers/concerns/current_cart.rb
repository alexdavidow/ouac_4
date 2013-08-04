module CurrentCart
  extend ActiveSupport::Concern

  def current_cart
    # @cart = current_user.shopping_cart # Relies on current_user helper. Bad practice to create a dependecy on another helper.
      user = User.find(params[:id])
      if user.shopping_cart
        @cart = user.shopping_cart
      else
        @cart = ShoppingCart.new(user: user, user_id: user.id)
      end
  end
end
