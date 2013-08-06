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
    # Take in parameters of the descriptions
      ## cookie_desc = params['descriptions']['cookie']
      ## icecream_desc = params['descriptions']['icecream']
      ## frosting_desc = params['descriptions']['frosting']
      ## topping_desc = params['descriptions']['topping']
    # assemble all descriptions into one string
      ## description = cookie_desc + icecream_desc + frosting_desc + topping_desc
    # Create new product order associated with a custom product model
    # Assign params[:descriptions] to the new product's description
      ## custom_cupcake = Product.new(description: description)
      ## custom_order = ProductOrder.new(product: custom_cupcake)
    # Throw custom order into current user's cart
      ## current_user.shopping_cart.add_item(custom_order)
  end
end
