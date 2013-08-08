class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    respond_to do |format|
      format.html
      format.js
    end
  end

  def custom_creator
  end

  def new_custom_creator
    # Take in parameters of the descriptions'
    puts "PARAMS"
    puts params
    puts "---------------------------------------"
      cookie_desc = params["description"]["cookie"]
      icecream_desc = params[:description][:filling]
      frosting_desc = params[:description][:frosting]
      topping_desc = params[:description][:topping]
    # assemble all descriptions into one string
      description = "The customer ordered a cupcake with a #{cookie_desc} cookie base, a #{icecream_desc} ice cream filling, #{frosting_desc} frosting, and #{topping_desc} toppings."
    puts "Description"
    puts description
    puts "----------------------------------------"
    # Create new product order associated with a custom product model
    # Assign params[:descriptions] to the new product's description
      custom_cupcake = Product.new(description: description, name: "Custom Order", price: 30)
      custom_order = ProductOrder.create(product: custom_cupcake)
    puts "CUSTOM ORDER"
    puts custom_order.id
    puts "-----------------------------------------"
    # If the user is not signed in, authenticate them first
    # Throw custom order into current user's cart
    # Respond to the ajax call
    respond_to do |format|
      if user_signed_in?
        current_user.shopping_cart.order.product_orders << custom_order
        format.json {render js: "console.log('Added custom order. Thanks! :3')" }
      else
       h = {redirect_url: new_user_session_path.to_s}
       format.json {render json: h }
      end
    end
  end
end
