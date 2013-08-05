class ProductOrdersController < ApplicationController
  before_filter :authenticate_user!
  include CurrentCart

  def new
  end

  def create
    if current_cart
      cart = current_cart
      product = Product.find(params[:product_id])
      item = cart.add_item(product.id) 
      respond_to do |format|
      if item.save!
          format.html { redirect_to shopping_cart_path(current_cart.id), notice: "You have successfully added #{product.name} to your cart." }
          #format.json ------- ### Add for AJAX call 
      else
        format.html { render :index }
        flash[:error] = "There was a problem adding the item to your cart. Please refresh and try again."
      end
    end
  end
  end

  def edit
  end

  def update
  end

  def destroy
    ProductOrder.find(params[:id]).delete 
    redirect_to :back
  end

  def stripe_payment
    Stripe.api_key = "sk_test_cJQzROjrK9TQz7EtOq34wFOO"

    token = params[:stripeToken]
    @payment = current_cart.total_price

    begin
      charge = Stripe::Charge.create(
        :amount => @payment,
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
