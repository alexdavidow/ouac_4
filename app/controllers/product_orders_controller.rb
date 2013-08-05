class ProductOrdersController < ApplicationController
  before_filter :user_signed_in?
  include CurrentCart

  def index
  end

  def new
  end

  def create
    if current_cart
      cart = current_cart
      product = ProductOrder.find(params[:id])
      cart.product_orders.build(product_order: product)
      respond_to do |format|
        format.html { redirect_to shopping_cart_path, notice: "You have successfully added #{item.name} to your cart." }
        #format.json ------- ### Add for AJAX call 
      end
    else
      flash[:error] = "There was a problem adding the item to your cart. Please refresh and try again."
    end
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  def stripe_payment
    Stripe.api_key = "sk_test_cJQzROjrK9TQz7EtOq34wFOO"

    token = params[:stripeToken]

    begin
      charge = Stripe::Charge.create(
        :amount => 1500,
        :currency => "usd",
        :card => token,
        :description => "payinguser@example.com"
      )

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to products_path
    end
  end
end
