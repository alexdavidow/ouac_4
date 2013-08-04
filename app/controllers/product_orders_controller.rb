class ProductOrdersController < ApplicationController
  before_filter :user_signed_in?

  def index
  end

  def new
    render :new
  end

  def create
    # Amount in cents
    @amount = 500

    customer = Stripe::Customer.create(
      :email => 'example@stripe.com',
      :card  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer => customer.id,
      :amount  =>  @amount,
      :description => 'Rails Stripe customer',
      :currency  => 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to products_path
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
