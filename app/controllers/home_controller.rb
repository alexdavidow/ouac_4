class HomeController < ApplicationController
  def index
    render :index
  end

  def menu
    render :menu
  end

  def about
    render :about
  end

  def contact
    render :contact
  end
end
