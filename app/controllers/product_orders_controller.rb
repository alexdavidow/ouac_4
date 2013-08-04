class ProductOrdersController < ApplicationController
  before_filter :user_signed_in?

  def index
  end

  def new
    render :new
  end

  def create
    # Trying to add a product to product_order for buy button action (from agile book)
    # @cart = current_cart
    # product = Product.find(params[:product_id])
    # @product_order = @cart.product_orders.build
    # @product_order.product = product

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

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
end
