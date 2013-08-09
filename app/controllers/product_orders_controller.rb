class ProductOrdersController < ApplicationController
  before_filter :authenticate_user!
  include CurrentCart

  def new
    @user = current_user
    @items = current_cart.order.product_orders.all
    @order = current_cart.order
    @cart = current_cart
  end

  def create
    if current_cart
      order = current_cart.order
      product = Product.find(params[:product_id])
      respond_to do |format|
      if order.add_without_duplication(product)
        format.json { render json: "console.log('Added item. :3')" } 
      else
        format.html { render :index }
        flash[:error] = "There was a problem adding the item to your cart. Please refresh and try again."
      end
    end
  end
  end

  def update
    order = ProductOrder.find(params[:id])
    order.quantity = params[:quantity]
    respond_to do |format|
      if order.save
        format.js { render js: "console.log('You have successfully updated the quantity of your item.');" }
      else
        redirect_to :back
      end
    end
  end

  def destroy
    ProductOrder.find(params[:id]).delete 
    redirect_to :back
  end

  def stripe_payment
     Stripe.api_key = Rails.configuration.stripe[:secret_key]

     token = params[:stripeToken]
     @decimal_amount = current_user.shopping_cart.order.order_sum
     @payment = (@decimal_amount * 100).to_i

    begin
      charge = Stripe::Charge.create(
        :amount => @payment,
        :currency => "usd",
        :card => token,
        :description => "#{current_user.email}"
      )
      redirect_to root_path
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to products_path
    end
    puts "order recevied"
    MessageMailer.order_confirmation(current_user, current_cart).deliver
    MessageMailer.admin_receives_order(current_user, current_cart).deliver
    puts "payment received"
    current_cart.empty_cart
    flash[:notice] = "You have successfully placed an order through Once Upon A Cupcake! Thank you for shopping with us!"
    puts "stripe complete"

  end
end
