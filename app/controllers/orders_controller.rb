class OrdersController < ApplicationController
  include CurrentCart
  def show
    @user = current_user
    @items = current_cart.order.product_orders.all
    @order = current_cart.order
    @cart = current_cart
  end

  def create
  end

  def update
    order = Order.find(params[:order][:id])
    order.mailing_address = params["order"]["mailing_address"]
    # puts "-------PARAMS--------"
    puts params["order"]["mailing_address"]
    order.phone_number = params["order"]["phone_number"]
    order.email = params["order"]["email"]
    order.delivery_date = params["order"]["delivery_date"]
    order.save!
    render text: :nothing
  end

  def destroy
    Order.find(params[:id]).delete
    redirect_to :back
  end
end
