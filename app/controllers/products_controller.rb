class ProductsController < ApplicationController
  
  def index
    @products = Product.all
    @product = Product.find(params[:id])
  end
end
