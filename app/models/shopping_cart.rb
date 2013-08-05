class ShoppingCart < ActiveRecord::Base
  attr_accessible :user_id, :user, :total_price, :num_of_items
  belongs_to :user, dependent: :destroy
  has_many :product_orders

  def add_item
    if current_cart
      cart = current_cart
      item = ProductOrder.find(params[:id])
      cart.product_orders << item
      respond_to do |format|
        format.html { redirect_to shopping_cart_path, notice: "You have successfully added #{item.name} to your cart." }
        #format.json ------- ### Add for AJAX call 
      end
    else
      flash[:error] = "There was a problem adding the item to your cart. Please refresh and try again."
    end
  end
end
