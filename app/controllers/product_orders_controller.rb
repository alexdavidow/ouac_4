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
      product_order = ProductOrder.create(product_id: product.id)
      respond_to do |format|
      if product_order.save!
        order.check_for_duplicates(product_order)
        format.json { render js: "console.log('hi')" } 
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
        #format.html { redirect_to :back, flash[:notice] = "You have updated the quantity"}
        format.json { render :json => "You have successfully updated the quantity of #{order.product.name}" }
      else
        redirect_to :back
        flash[:error] = "You did not update the quantity successfully."
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
      redirect_to contact_path
    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to products_path
    end
    puts "order recevied"
    MessageMailer.order_confirmation(current_user, current_cart).deliver
    MessageMailer.admin_receives_order(current_user, current_cart).deliver

  end

  def shipping
    # @user = current_user
    # @product_order = ProductOrder.find(params[:product_order][:id])
    # render :json => @user.to_json
  end
end
