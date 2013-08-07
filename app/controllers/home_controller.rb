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

  def submit_contact
    puts "form submitted"
    MessageMailer.contact_submit(params).deliver
  end

end
